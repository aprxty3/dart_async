import 'package:async/async.dart';

Future<String> getData() {
  return Future.delayed(
    Duration(seconds: 2),
    () {
      print('calculating data');
      return 'Dapet dataa';
    },
  );
}

void main() async {
  final asyncCache = AsyncCache<String>(Duration(seconds: 20));

  String result1 = await asyncCache.fetch(() => getData());
  print(result1);
  String result2 = await asyncCache.fetch(() => getData());
  print(result2);
}
