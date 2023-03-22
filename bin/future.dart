import 'package:test/test.dart';

Future<void> hello() {
  return Future.delayed(
    Duration(seconds: 2),
    () => print('hello jii'),
  );
}

Future<String> sayHello(String name) {
  return Future.delayed(
    Duration(seconds: 2),
    () => 'hello $name',
  );
}

void main() {
  hello();
  sayHello('ajii').then((value) => print(value));
  print('doneee');
}
