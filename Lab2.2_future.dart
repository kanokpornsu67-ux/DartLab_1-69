Future<String> fetchUserName() async {
  return Future.delayed(Duration(seconds: 2), () => 'สมชาย');
}

Future<int> fetchUserAge() async {
  return Future.delayed(Duration(seconds: 1), () => 20);
}

void main() async {
  print("เริ่มโหลดข้อมูลผู้ใช้...");

  String name = await fetchUserName();  // รอ 2 วินาที
  int age = await fetchUserAge();       // แล้วรออีก 1 วินาที

    print("ผู้ใช้: $name อายุ $age ปี");
}
