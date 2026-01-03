import 'dart:io';

class Demo{
  final int i =1;
  void change(){
    // i++;
    print('change in demo $i');
  }
}
class Demo1 extends Demo{
  void change(){
    super.change();
    print('change in demo1 class');
  }
}
void main(List<String> args) {

   print('enter num1 to divide values = ');
    int a = int.parse(stdin.readLineSync()!);
    print('enter num2 to divide values = ');
    int b = int.parse(stdin.readLineSync()!);
    int c = a ~/ b;
    print('division = $c');
  // Demo d = Demo();
  // d.change();

  Demo1 d= Demo1();
  d.change();
}