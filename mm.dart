void executeOperation(int a, int b, int Function(int, int) operation) {
  var result = operation(a, b);
  print('Result: $result');
}
int add(int x, int y){
  return x + y;
}
int subtract(int x, int y) {
  return x - y;
}

void main() {
  executeOperation(10, 5, add); // ส่งฟังก์ชัน add เข้าไป Result: 15
  executeOperation(10, 5, subtract); // ส่งฟังก์ชัน subtract เข้าไป Result: 5

  // Anonymous function (ฟังก์ชันไม่มีชื่อ)
  executeOperation(10, 5, (x, y) => x * y); // Result: 50
}