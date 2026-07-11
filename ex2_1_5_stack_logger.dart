mixin Loggable{
  void log(String msg){
    DateTime now = DateTime.now();
    print("[${now.hour}:${now.minute}:${now.second}] LOG: $msg");
  }
}
class Stack<T> with Loggable{
  List<T> stack = [];
  void push(T item){
    stack.add(item);
    log("push: $item");
  }
  T pop(){
    T item = stack.removeLast();
    log("pop: $item");
    return item;
  }
}
void main(){
  Stack<int> intStack = Stack<int>();
  intStack.push(5);
  intStack.push(10);
  print("ส่งค่าคืน : ${intStack.pop()}");
  print("ส่งค่าคืน : ${intStack.pop()}");
}
