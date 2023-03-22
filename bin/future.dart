import 'package:test/test.dart';

Future<void> hello() {
  return Future.delayed(
    Duration(seconds: 2),
    () => print('hello jii'),
  );
}

void main() {
  hello();
  print('doneee');
}
