class User{
  int? id;
  String? name;
  //1.default
  User(){
    print('default cons');
  }
  //2.Parameterized
  // User(int id,String name){
  //   print('id : $id name : $name');
  // }

  //3.named Constructor
  User.myNamedCons(int id,String name){
    this.id = id;
    this.name = name;
    print('Named Cons : id : $id name : $name');
  }

  void call(){
    print('call function in User class');
  }

  void displayData(){
    print('data in display function : id : $id name : $name');
  }
}
void main(List<String> args) {
  User u = new User();
  // User u = new User(1,'dart');
  u.call();

  User u1 = new User.myNamedCons(1, 'dart');

  u1.displayData();

}