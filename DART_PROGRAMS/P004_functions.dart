//1.pre-define
//2.user define

//without parameter without return type
import 'dart:io';

void fun1(){
  print('fun function without parameter without return type');
}
//without parameter with return type
int fun2(){
  print('fun2 withuot parameter with return type');
  return 4654;
}
String fun3(){
  return 'hello';
}
//with parameter without return type
void fun4(int i){
  print('fun4 without return type with paramter : $i');
}
void fun5(String name){
  print('name : $name');
}
//with parameter with return type
int fun6(int j){
  print('j = $j');
  return j;
}

int getSquare(int num){
  print('number coming from main function : $num');
  return num*num;
}

void main(List<String> args) {
  fun1();
  int res = fun2();
  print(res);

  fun4(3245);
  fun5('dart');

  int res2 = fun6(34);
  print('res 2 : $res2');

  print('enter number to get Square : ');
  int num = int.parse(stdin.readLineSync()!);

  int sq = getSquare(num);
  print('square of $num is $sq');
}