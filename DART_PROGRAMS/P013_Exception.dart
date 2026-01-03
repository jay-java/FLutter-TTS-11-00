import 'dart:io';
void main(List<String> args) {
  try{
    print('enter num1 to divide values = ');
    int a = int.parse(stdin.readLineSync()!);
    print('enter num2 to divide values = ');
    int b = int.parse(stdin.readLineSync()!);
    int c = a ~/ b;
    print('division = $c');
  }
  on IntegerDivisionByZeroException{
    print('data should be greater than 0');
  }
  on FormatException{
    print('data should be numeric value');
  }
  catch(e){
    print(e);
  }

  finally{
    print('finally block will executes everytime');
  }
}