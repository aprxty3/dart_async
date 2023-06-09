import 'dart:async';

Stream<String> stream() {
  return Stream.periodic(Duration(seconds: 2), (i) {
    if (i % 2 == 0) {
      return '$i adalah genap';
    } else {
      return '$i adalah ganjil';
    }
  });
}

void main() {
  Stream<String> flow = stream();
  StreamSubscription<String> listen = flow.listen((event) {
    print(event); //Stream akan diganti oleh onData
  });
  listen.onData((event) {
    print('Stream Subscription: $event');
  });
  listen.onDone(() {
    print('Stream Subscription: done');
  });

  /// Ketika melisten stream function yang sama, makan akan menghasilkan error
  // StreamSubscription<String> listen2 = flow.listen((event) {
  //   print(event);
  // });
  print('done');
}
