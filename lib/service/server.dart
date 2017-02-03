import 'dart:async';
import 'dart:convert';
import 'dart:html';

import 'package:angular2/core.dart';
import 'package:logging/logging.dart';

/// This class handles interaction with the server, abstracting out details like
/// command IDs and pairing responses to requests.
@Injectable()
class ServerService {
    int _nextCommandId;
    Map<int,Completer> _pendingCommands;
    Timer _pingTimer;
    Future<WebSocket> _socketFuture;
    Map<int,StreamController> _subscriptions;

    final Logger log = new Logger('ServerService');

    /// Constructor.
    ServerService() {
        this._clearState();
    }

    /// Send a command to the server and return a future response.
    ///
    /// The `args`, if provided, must be serializable to JSON.
    Future<ServerResponse> command(String command, [Map args]) async {
        var socket = await this._getSocket();
        var completer = new Completer<ServerResponse>();
        this._pendingCommands[this._nextCommandId] = completer;

        socket.send(JSON.encode({
            'command': command,
            'command_id': this._nextCommandId++,
            'args': args ?? {}
        }));

        return completer.future;
    }

    /// Clear out all state related to a connection.
    ///
    /// This is useful for resetting after closing a connection as well as for
    /// initialization of this object.
    void _clearState() {
        this._nextCommandId = 0;
        this._pendingCommands = new Map<int,Completer>();
        this._socketFuture = null;
        this._subscriptions = new Map<int,StreamController>();
    }

    /// Return a websocket wrapped in a future. If not already connected, this
    /// method will connect to the websocket before completing the future.
    Future<WebSocket> _getSocket() {
        if (this._socketFuture == null) {
            var completer = new Completer<WebSocket>();
            var socket = new WebSocket('wss://localhost/ws/');
            this._socketFuture = completer.future;

            socket.onClose.listen((event) {
                log.info('Socket disconnected.');
                this._clearState();
            });

            socket.onError.listen((event) {
                var err = 'Server error!';
                log.severe(err, event);
                completer.completeError(err);
                this._socketFuture = null;
            });

            socket.onMessage.listen(this._handleMessage);

            socket.onOpen.listen((event) {
                log.info('Socket connected.');
                this._resetPingTimer();
                completer.complete(socket);
            });
        }

        return this._socketFuture;
    }

    /// Handles an incoming message from the websocket.
    ///
    /// This either completes a command future with a response, or it sends
    /// a message to a subscription stream.
    void _handleMessage(MessageEvent event) {
        var message = JSON.decode(event.data);
        var data = message['data'];
        this._resetPingTimer();

        if (message['type'] == 'response') {
            var commandId = message['command_id'];
            var completer = this._pendingCommands.remove(commandId);

            if (message['success']) {
                var subscription;
                var subscriptionId = data.remove('subscription_id');

                if (subscriptionId != null) {
                    subscription = this._newSubscription(subscriptionId);
                }

                var response = new ServerResponse(data, subscription);
                completer.complete(response);
            } else {
                completer.completeError(new ServerError(message['error']));
            }
        } else if (message['type'] == 'event') {
            var subscriptionId = message['subscription_id'];
            var controller = this._subscriptions[subscriptionId];
            var event = new ServerEvent(message['data']);
            controller.add(event);
        } else {
            throw new Exception('Unexpected message type: ' + message['type']);
        }
    }

    /// Create a new subscription stream.
    Stream<ServerEvent> _newSubscription(int subscriptionId) {
        var controller = new StreamController<ServerEvent>();
        this._subscriptions[subscriptionId] = controller;

        controller.onCancel = () async {
            var args = {'subscription_id': subscriptionId};
            var response = await this.command('unsubscribe', args);
            this._subscriptions.remove(subscriptionId);
        };

        return controller.stream;
    }

    /// Reset the ping timer.
    void _resetPingTimer() {
        if (this._pingTimer != null) {
            this._pingTimer.cancel();
        }

        this._pingTimer = new Timer(new Duration(seconds: 15), () async {
            await this.command('ping');
        });
    }
}

/// This class represents a command that can be sent to the server.
///
/// This class is only used internally by the ServerService. External code
/// should use the service's `command` method instead of instantiating
/// this class directly.
class ServerCommand {
    String command;
    Map args;

    ServerCommand(this.command, this.args);
}

/// This class represents an error that is received from the server.
///
/// This class should only be instantiated by the ServerService.
class ServerError {
    String error;

    ServerError(this.error);
}

/// The type of event produced by a server subscription.
///
/// This class should only be instantiated by the ServerService.
class ServerEvent {
    Map data;

    ServerEvent(this.data);
}

/// This class represents a response that is received from the server.
///
/// Some responses also include a subscription which can be listened to for
/// additional server events; otherwise the subscription will be null.
///
/// This class should only be instantiated by the ServerService.
class ServerResponse {
    Map data;
    Stream<ServerEvent> subscription;

    ServerResponse(this.data, [this.subscription]);
}
