Future<String> sayHello(String name) async {
  // return 'hello $name';
  throw Exception('upppss');
}

Future<String> first() async {
  return 'Ajiiii';
}

Future<String> last() async {
  return 'Prasetyo';
}

Future<void> say() async {
  try {
    var firstName = await first();
    var lastName = await last();
    var fullname = await sayHello('Dwi $firstName $lastName ');
    print(fullname);
  } catch (e) {
    print(e);
  } finally {
    print('done save');
  }
}

void main() {
  /// TODO: sulit dibaca
  first()
      .then((value1) => last().then((value2) {
            var fullname = '$value1 $value2';
            return sayHello(fullname);
          }))
      .then((response) => print(response));

//TODO : lebih mudah dibaca
  say();

  print('helloooo');
}
