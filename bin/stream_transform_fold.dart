Stream<int> numbers() {
  return Stream.fromIterable([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
}

void main() {
  numbers().fold(0, (previous, element) => previous + element).then((value) {
    print('totalnya adalah $value');
  });

  print('done');
}
