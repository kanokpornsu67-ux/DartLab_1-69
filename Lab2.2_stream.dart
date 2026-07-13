Stream<String> getUserName() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'Mark';
  await Future.delayed(Duration(seconds: 1));
  yield 'John';
  await Future.delayed(Duration(seconds: 1));
  yield 'Smith';
}

void main() async {
  await for (String name in getUserName()) {
    print(name);
  }
  print("รับข้อมูลครบแล้ว");
}