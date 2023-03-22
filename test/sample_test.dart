import 'package:flutter_test/flutter_test.dart';

/// Untuk menjalankan unit test. bisa menggunakan "dart test" pada terminal
void main() {
  test(
    "Unit Test",
    () {
      /// Isi Unit Test nya
      var respone = sayHello("Dart");
      expect(respone, "Hello Dart");
    },
  );
}

String sayHello(String name) {
  return "Hello $name";
}
