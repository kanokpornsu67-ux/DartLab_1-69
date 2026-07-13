Future<Map<String,dynamic>>fetchProfile(int userld)async{
  await Future.delayed(Duration(seconds: 2));
  if (userld <= 0){
    throw Exception("รหัสผู้ใช้ไม่ถูกต้อง");
  }

  return{
    "id": userld,"name": "mind","email": "kanokpornsu67@nu.ac.th.com"
  };
}
void main() async{
  try{
    var profile = await fetchProfile(0);
    print("ข้อมูลโปรไฟล์");
    print("ID : ${profile['id']}");
    print("Name : ${profile['name']}");
    print("Email : ${profile['email']}");
  }catch(e){
    print("เกิดข้อผิดพลาด: $e");
  }finally{
    print("END");
  }
}