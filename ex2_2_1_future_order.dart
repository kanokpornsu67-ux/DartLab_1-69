Future<String> get(){
  return Future.delayed(Duration(seconds: 3),() => "2.โหลดเสร็จ");
}
void main(){
  print("1.เริ่ม");
  get().then((value)=>print(value));
  print("3.จบ");
}