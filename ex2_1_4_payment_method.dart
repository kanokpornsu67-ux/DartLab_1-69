abstract class PaymentMethod{
  void pay(double amount);

}
class CreditCard extends PaymentMethod{
  @override
  void pay(double amount){
    print("จ่ายผ่านบัตรเครดิตแล้ว $amount บาท");
  }
}
class PromptPay extends PaymentMethod{
  @override
  void pay(double amount){
    print("สแกนจ่ายพร้อมเพย์ $amount บาท");
  }
}
class CashOnDelivery extends PaymentMethod{
  @override
  void pay(double amount){
    print("เก็บเงินปลายทาง $amount บาท");
  }
}
// classลูกเป็นทางเลือกการจ่ายตังเหมือนกันกับclassแม่การใช้extendทำให้แชร์โครงสร้างร่วมกันได้และถ้าจะเพิ่มโค้ดเข้ามาอีกก็จะสะดวกกว่าไม่ต้องไล่เขียนซ้ำใหม่ทุกคลาส
void main(){
  CreditCard card = CreditCard();
  card.pay(127);
  PromptPay prom = PromptPay();
  prom.pay(555);
  CashOnDelivery cash = CashOnDelivery();
  cash.pay(1412.97);
}