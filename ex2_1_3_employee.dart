class Employee{
  String name;
  Employee(this.name);
  double calculateSalary(){
    return 0.0;
  }  
}
class FullTimeEmployee extends Employee{
  double monthlySalary;
  FullTimeEmployee(String name,this.monthlySalary):super(name);
  @override
  double calculateSalary(){
    return monthlySalary;
  }
}
class PartTimeEmployee extends Employee{
  double hourlyRate; //อัตราค่าจ้างต่อชม.
  int hoursWorked;   //จำนวนชม.ที่ทำงานจริง
  PartTimeEmployee(String name,this.hourlyRate,this.hoursWorked):super(name);
  @override
  double calculateSalary(){
    return hourlyRate * hoursWorked;
  }
}
void main(){
  List<Employee> employees = [FullTimeEmployee("M",30000),PartTimeEmployee("P",150,80)];

  for(var e in employees){
    print("Employee: ${e.name}  CalculateSalary: ${e.calculateSalary()}");
  }
}