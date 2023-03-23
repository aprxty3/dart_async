import 'package:test/test.dart';

Future<String> getName() async {
  return 'ajii prasetyo';
}

void main() {
  test('Future Test', () async {
    final name = await getName();
    expect(name, 'ajii prasetyo');
  });
}
