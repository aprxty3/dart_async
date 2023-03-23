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
  final asyncMemorize = AsyncMemoizer<String>();

  String result1 = await asyncMemorize.runOnce(() => getData());
  print(result1);
  String result2 = await asyncMemorize.runOnce(() => getData());
  print(result2);
}
