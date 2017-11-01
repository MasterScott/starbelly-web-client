import 'package:angular2/common.dart';
import 'package:angular2/core.dart';
import 'package:ng2_modular_admin/ng2_modular_admin.dart';
import 'package:ng2_fontawesome/ng2_fontawesome.dart';

import 'package:starbelly/model/task.dart';
import 'package:starbelly/protobuf/protobuf.dart' as pb;
import 'package:starbelly/service/document.dart';
import 'package:starbelly/service/server.dart';
import 'package:starbelly/validate.dart' as validate;

/// Run a CPU profile.
@Component(
    selector: 'profile',
    templateUrl: 'profile.html',
    styles: const ['''
        form {
            max-width: 30em;
        }
        label {
            min-width: 10em;
        }
    '''],
    directives: const [FA_DIRECTIVES, MA_DIRECTIVES]
)
class ProfileView {
    ControlGroup form;
    String duration = '3.0';
    Control durationControl;
    pb.ResponsePerformanceProfile profile;
    String sort = 'total_time';
    String top = '20';
    Control topControl;

    DocumentService _document;
    ServerService _server;

    /// Constructor
    ProfileView(this._document, this._server) {
        this._document.title = 'Task Monitor';
        this._document.breadcrumbs = [
            new Breadcrumb(name: 'System', icon: 'desktop'),
            new Breadcrumb(name: 'CPU Profile', icon: 'microchip'),
        ];
        this.durationControl = new Control('', Validators.compose([
            validate.required(), validate.number()]));
        this.topControl = new Control('', Validators.compose([
            validate.required(), validate.integer()]));
        this.form = new ControlGroup({
            'duration': this.durationControl,
            'top': this.topControl,
        });
    }

    /// Run a CPU profile.
    void runProfile(ButtonClick click) async {
        click.button.busy = true;
        var request = new pb.Request();
        request.performanceProfile = new pb.RequestPerformanceProfile()
            ..duration = double.parse(this.duration)
            ..sortBy = this.sort
            ..topN = int.parse(this.top, radix: 10);
        var response = await this._server.sendRequest(request);
        this.profile = response.response.performanceProfile;
        click.button.busy = false;
    }
}
