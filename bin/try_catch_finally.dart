Future<String> sayHello(String name) {
  // return Future.value('hello $name');

  return Future.error(Exception('upppss'));
}

void main() {
  sayHello('ajii')
      .then((value) => print(value))
      .catchError((error) => print('Error with message ${error.message}'))
      .whenComplete(() => print('done Future'));
  print('doneee');
}
