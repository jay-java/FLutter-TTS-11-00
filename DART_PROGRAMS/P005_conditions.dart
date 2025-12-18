void main(List<String> args) {
  int a = 1;
  if(a > 10){
    print('a is greater than 10');
  }  
  else{
    print('a is less than 10');
  }

  int m = 76;
  if(m < 35){
    print('fail');
  }
  else if(m >=35 && m <=60){
    print('pass class');
  }
  else if(m >=61 && m <=70){
    print('C grade');
  }
  else if(m >=71 && m <=80){
    print('B grade');
  }
  else if(m >=81 && m <=90){
    print('A grade');
  }
  else if(m >=91 && m <=100){
    print('A+ grade');
  }
  else {
    print('invalid input');
  }


  int age = 4;
  if(age > 18){
    if(age < 55){
      print('you are eligible');
    }
    else{
      print('age is greater than 18 but not less than 55');
    }
  }
  else{
    print('age is less than 18');
  }

  print('1.English');
  print('2.Hindi');
  print('3.gujarati');

  int choice = 20;
  switch(choice){
    case 1:
    print('you selected english');
    break;
    case 2:
    print('you selected hindi');
    break;
    case 3:
    print('you selected gujarati');
    break;
    default:
    print('invalid input');
  }
}