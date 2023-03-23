import 'package:test/test.dart';

Future<String> getName() async {
  return 'ajii prasetyo';
}

Future<String> matcher() async {
  return Future.delayed(
    Duration(seconds: 2),
    () => 'ajiii prasetyo',
  );
}

void main() {
  test('Future Matcher', () {
    final name = matcher();
    expect(name, completion(equals('ajiii prasetyo')));
  });
  test('Future Test', () async {
    final name = await getName();
    expect(name, 'ajii prasetyo');
  });
}
