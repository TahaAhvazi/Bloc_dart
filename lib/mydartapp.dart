Stream<int> mynumbers(int maxNumber) async* {
  for (int i = 0; i < maxNumber; i++) {
    yield i;
  }
}

Future<int> sumStream(Stream<int> mylovelyStream) async {
  int sum = 0;
  await for (int namyandeh in mylovelyStream) {
    sum += namyandeh;
  }
  return sum;
}
