import 'dart:io';
import 'dart:isolate';

Future<String> sayHello(String name) async {
  sleep(Duration(seconds: 2));
  print('hellow $name');
  Isolate.exit();
}

void main() {
  Isolate.spawn(sayHello, 'Ajiii');
  print('done');
}
