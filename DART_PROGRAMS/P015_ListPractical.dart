class Student{
  int? _id;
  String? _name;
  double? _per;
  Student(int id,String name,double per){
    this._id = id;
    this._name = name;
    this._per = per;
  }
  @override
  String toString() {
    return 'Student : id = $_id, name = $_name, percentage = $_per';
  }
}
void main(List<String> args) {
  Student s1 =Student(1,'dart', 67.6);
  Student s2 =Student(2,'java', 77.6);
  Student s3 =Student(3,'kotlin', 87.6);
  Student s4 =Student(4,'python', 69.6);
  Student s5 =Student(5,'php', 78.6);

  List<Student> list = [s1,s2,s3,s4,s5];
  
  // for(int index=0; index<list.length;index++){
  //   print(list[index]);
  // }

  for(var s in list){
    print(s);
  }

  list.forEach((s)=>print(s));
}