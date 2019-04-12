import 'package:starbelly/protobuf/starbelly.pb.dart' as pb;

/// A task within an task monitor event.
class Task {
    String name;
    int count;

    // Task.fromPb(pb.Task pbTask) {
    //     this.name = pbTask.name;
    //     this.count = pbTask.count;
    // }
}

/// A task monitor event.
class TaskMonitor {
    int count;
    List<Task> tasks;

    // TODO switch to task tree -- is this model necessary?
    // TaskMonitor.fromPb(pb.TaskMonitor pbTaskMonitor) {
    //     this.count = pbTaskMonitor.count;
    //     this.tasks = new List<Task>.generate(
    //         pbTaskMonitor.tasks.length,
    //         (i) => new Task.fromPb(pbTaskMonitor.tasks[i])
    //     );
    // }
}
