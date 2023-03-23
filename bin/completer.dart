import 'dart:async';

void longRunningTask(
    void Function(String) onDone, void Function(Object?) onError) {
  Future.delayed(Duration(seconds: 2))
      .onError((error, stackTrace) => onError(error))
      .then((value) => onDone('Task Done'));
}

Future<String> runLongRunningTask() {
  Completer<String> completer = Completer();
  longRunningTask((value) => completer.complete(value),
      (error) => completer.completeError(error!));

  return completer.future;
}

void main() {
  runLongRunningTask().then((value) => print(value));
  print('done');
}
