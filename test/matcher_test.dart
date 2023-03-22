import 'package:flutter_test/flutter_test.dart';

/// Untuk menjalankan unit test. bisa menggunakan "dart test" pada terminal
void main() {
  test(
    "Unit Test with Matcher",
        () {
      /// Isi Unit Test nya
      expect(sayHello("Dwi"), endsWith("Dwi"));
      expect(sayHello("Dwi"), startsWith("Hello"));
      expect(sayHello("Dwi"), equalsIgnoringCase("hello dwi"));
      expect(sayHello("Dwi"), isA<String>());
    },
  );
  test(
    "Unit Test with Matcher",
        () {
      /// Isi Unit Test nya
      expect(sum(1, 1), equals(2));
      expect(sum(1, 1), greaterThan(1));
      expect(sum(1, 1), lessThan(10));
    },
  );
}

String sayHello(String name) {
  return "Hello $name";
}

int sum(int a, int b) {
  return a + b;
}
