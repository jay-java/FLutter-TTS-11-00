class A{ //Parent
  void classAFun(){
    print('class A function');
  }
}
class B extends A{ //child
  void classBFun(){
    print('class B Function');
  }
  void fun(){
    print('fun function in B class');
  }
}
class C extends B{
  void classCFun(){
    print('class C function');
  }
}

//hierarchical
class D extends A{
  void classDFun(){
    print('class D function');
  }

}

//multiple,hybrid inheritance is not supported by dart because of ambiguity(confusion)

void main(List<String> args) {
  B b= new B();
  b.classAFun();
  b.classBFun();
  b.fun();

  C c  = new C();
  c.classAFun();
  c.classBFun();
  c.classCFun();


  D d = new D();
  d.classAFun();
  d.classDFun();
}