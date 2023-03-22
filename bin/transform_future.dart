Future<String> name() {
  return Future.value('ajii prasetyo');
}

void main() {
  name()
      .then((value) =>
              value.split(' ') //merubah  future string ke future list string
          )
      .then((value) => value
          .reversed) //merubah future list string ke future iterable list string
      .then((value) => value.map((e) => e
              .toUpperCase()) //merubah future iterable list string ke UpperCase
          )
      .then((value) => print(value));
  print('done');
}
