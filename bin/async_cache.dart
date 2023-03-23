import 'package:async/async.dart';

Future<String> getData() {
  return Future.delayed(
    Duration(seconds: 2),
    () => 'Dapet dataa',
  );
}

void main() async {
  final asyncCache = AsyncCache<String>(Duration(seconds: 10));

  final result1 = await asyncCache.fetch(() => getData());
  print(result1);
  final result2 = await asyncCache.fetch(() => getData());
  print(result2);
}
