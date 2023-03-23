import 'dart:io';
import 'dart:isolate';

class Parameter {
  String prefix;
  SendPort sendPort;

  Parameter(this.prefix, this.sendPort);
}

Future<String> numbers(Parameter parameter) async {
  for (var i = 0; i < 10; i++) {
    sleep(Duration(seconds: 1));
    parameter.sendPort.send("${parameter.prefix} $i");
  }
  Isolate.exit();
}

void main() {
  final receivePort = ReceivePort();
  Isolate.spawn(numbers, Parameter('Ajiii', receivePort.sendPort));

  receivePort.take(5).listen((value) {
    print(value);
  });

  print('done');
}
