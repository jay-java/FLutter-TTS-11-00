import 'dart:io';

void main(List<String> args) {
  print('hello');
  print('hello again');

  stdout.write('hello');
  stdout.write('hello');
  
  print('enter value  =' );
  int i = int.parse(stdin.readLineSync()!);
  print('i = $i');

  print('enter name : ');
  String name = stdin.readLineSync()!;
  print('name = $name');
}