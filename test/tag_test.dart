@Tags(['ajii', 'prasetyo'])
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'test first',
    () => prints('first'),
    tags: ['first'],
  );
  test(
    'test second',
    () => prints('second'),
    tags: ['second'],
  );
}
