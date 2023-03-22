import 'package:flutter_test/flutter_test.dart';

void main() {
  var data = "Aji";
  setUp(() => data = "Aji");
  setUpAll(
    () => print('start unit test'),
  );
  tearDown(
    () => print(data),
  );

  group("Test Setup Test", () {
    test('test firts', () {
      data = "$data Prasetyo";
      expect(data, equals("Aji Prasetyo"));
    });
    test('test second', () {
      data = "$data setyo";
      expect(data, equals("Aji setyo"));
    });
  });
}
