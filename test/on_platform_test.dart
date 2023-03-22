@OnPlatform({'windows': Skip('this not working on mac os')})
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Test Sum", () {
    test(
      "positive",
      () => expect(sum(1, 2), equals(3)),
    );
    test("negative", () => expect(sum(10, -5), equals(5)),
        onPlatform: {'mac-os': Skip('this test is not working in mac')});
  });
}

int sum(int a, int b) => a + b;
