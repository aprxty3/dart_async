Stream<int> numbers() {
  return Stream.periodic(Duration(seconds: 2), (i) => i);
}

void main() {
  numbers().asBroadcastStream().take(5);

  numbers().listen((event) {
    print(event);
  });
  numbers().listen((event) {
    print(event);
  });

  print('done');
}
