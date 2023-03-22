import 'package:test/test.dart';

Future<void> hello() {
  return Future.delayed(
    Duration(seconds: 2),
    () => print('hello jii'),
  );
}

Future<String> sayHello(String name) {
  // return Future.delayed(
  //   Duration(seconds: 2),
  //   () =>
  //       // 'hello $name',
  //       throw Error(),
  // );
  return Future.error(Exception('upppss'));
}

void main() {
  hello();
  sayHello('ajii')
      // .onError((error, stackTrace) => 'fallback')
      .then((value) => print(value))
      .catchError((error) => print('Error with message ${error.message}'));

  print('doneee');
}
