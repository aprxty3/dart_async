import 'dart:async';

void main() {
  Timer(Duration(seconds: 2), () {
    print('hello');
  });

  Timer.periodic(Duration(seconds: 1), (timer) {
    print('timer: ${timer.tick}');
    if (timer.tick == 5) {
      timer.cancel();
    }
  });
  print('done');
}
