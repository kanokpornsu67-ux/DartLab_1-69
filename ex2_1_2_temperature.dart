class Temperature{
  double _celsius = 0;
  double get celsius => _celsius;

  set celsius(double value){
    if(value < -273.15){
      print("ผิดพลาด : อุณหภูมิต่ำกว่า -273.15");
    }else{
      _celsius = value;
    }
  }

  double get fahrenheit => _celsius * 9/5 +32;
}
void main(){
  var t = Temperature();
  t.celsius = 25;
  print("Celsius: ${t.celsius}");
  print("Fahrenheit: ${t.fahrenheit}");

  t.celsius = -300;
}
