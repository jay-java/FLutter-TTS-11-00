class A{ //Parent
  A(){
    print('A class cons');
  }
  void call(){
    print('call function in A class');
  }
}

class B extends A{ //child
  B(){
    print('B class default cons');
  }
  void call(){
    super.call();
    print('call function in B class');
  }

  void show(){
    print('show function');
  }
}
void main(List<String> args) {
  B b = B();
  b.call();
  b.show();
}