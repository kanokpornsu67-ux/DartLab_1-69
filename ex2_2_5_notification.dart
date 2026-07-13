import 'dart:async';

void main(){
  StreamController<String> controller = StreamController<String>();

  controller.stream.listen(
    (message) => print("แจ้งเตือน: $message"),
    onDone: () => print("ปิดการแจ้งเตือน")
  );
  controller.add("ข้อความเข้า");
  controller.add("ส่งคำขอติดตาม");
  controller.add("กดถูกใจโพสต์");

  controller.close();
}
