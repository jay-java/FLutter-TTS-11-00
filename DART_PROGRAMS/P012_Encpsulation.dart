class Student{
  int? _id;
  String? _name;
  String? _address;
  int? _contact;

  void setId(int id){
    this._id = id;
  }

  int? getId(){
    return _id;
  }
  void setName(String name){
    this._name = name;
  }

  String? getName(){
    return _name;
  }
  void setAddress(String address){
    this._address = address;
  }

  String? getAddress(){
    return _address;
  }
  void setContact(int contact){
    this._contact = contact;
  }

  int? getContact(){
    return _contact;
  }

  // void showData(){
  //   print('id : $_id name : $_name address : $_address contact : $_contact');
  // }

  @override
  String toString() {
    return 'id : $_id name : $_name address : $_address contact : $_contact';
  }
}
void main(List<String> args) {
  Student s1 = new Student();
  s1.setId(1);
  s1.setName('dart');
  s1.setAddress('ahmedabad');
  s1.setContact(9876532);

  Student s2 = new Student();
  s2.setId(2);
  s2.setName('java');
  s2.setAddress('ahmedabad');
  s2.setContact(9876532);

  // s1.showData();

  print(s1.getId());
  print(s1);

  GetStudet g = GetStudet();
  g.getStudentData(s1);

}

class GetStudet{
  void getStudentData(Student abc){
    print(abc);
  }
}