Future<String> sayHello(String name) async {
  return 'hello $name';
}

void main() {
  sayHello('ajii').then((value) => print(value));

  print('helloooo');
}
