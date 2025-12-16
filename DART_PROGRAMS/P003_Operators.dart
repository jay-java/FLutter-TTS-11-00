import 'dart:io';

void main(List<String> args) {
  //1.Arithmetic -> +,-,*,/,%
  print('enter a = ');
  int a  = int.parse(stdin.readLineSync()!);
   print('enter b = ');
  int b  = int.parse(stdin.readLineSync()!);
  print(a+b);
  // int c = a-b;
  print('a - b = ${a-b}');

  print('a x b = ${a*b}');
  print('a / b = ${a/b}');
  print('a % b = ${a%b}');

  //2.conditional -> >,>=,<,<=,!=,==
  print(a>b);
  print(a>=b);
  print(a<b);
  print(a<=b);
  print(a!=b);
  print(a==b);

  //3.Unary -> ++,--
  a++;// a = a+1
  print(a);

  a--;//a = a-1
  print(a);

  //4.assignment -> =,+=,-=,*=,/=
  int i = 1;
  
  i += 12; // i = i+12
  print('i = $i');

  i -= 10;
  print('i = $i');

  i *= 3;
  print('i = $i');

  i ~/= 3;
  print('i = $i');

  //5.logical -> &&,||,!

}