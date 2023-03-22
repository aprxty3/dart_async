Future<String> sayHello(String name) async {
  return 'hello $name';
}

Future<String> first() async {
  return 'Ajiiii';
}

Future<String> last() async {
  return 'Prasetyo';
}

void main() {
  first()
      .then((value1) => last().then((value2) {
            var fullname = '$value1 $value2';
            return sayHello(fullname);
          }))
      .then((response) => print(response));
  print('helloooo');
}
