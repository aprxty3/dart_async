import 'package:flutter_test/flutter_test.dart';

void main() {
  var data = "Aji";
  setUpAll(
    () => print('start unit test'),
  );

  setUp(() => data = "Aji");

  tearDown(
    () => print(data),
  );

  tearDownAll(
    () => print('end unit test'),
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
