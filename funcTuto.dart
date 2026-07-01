String say(String from, String msg, [String? dev])=> '$from says $msg${dev != null ? 'with a $dev' :''}';

void main(){
  print(say('Bob', 'Howdy?')); // Bob says Howdy?
  print(say('Alice', 'Hi!', 'smartphone'));

}