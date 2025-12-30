import 'dart:io';

void main(List<String> args) {
  //***
  //***
  //***
  for(int i=1;i<=5;i++){//row
    for(int j=1;j<=4;j++){//col
      stdout.write('*');
    }
    print('');
  }
  for(int i=1;i<=5;i++){//row
    for(int j=1;j<=i;j++){//col
      stdout.write('*');
    }
    print('');
  }
  
  for(int i=1;i<=5;i++){//row
    for(int j=1;j<=i;j++){//col
      stdout.write(j);
    }
    print('');
  }
  for(int i=1;i<=5;i++){//row
    for(int j=1;j<=i;j++){//col
      stdout.write(i);
    }
    print('');
  }

  for(int i=1;i<=5;i++){//row
    for(int s=4;s>=i;s--){
      stdout.write(' ');
    }
    for(int j=1;j<=i;j++){//col
      stdout.write('* ');
    }
    print('');
  }
  

    int counter =1;
   for(int i=1;i<=6;i++){//row
    for(int s=5;s>=i;s--){
      stdout.write(' ');
    }
    for(int j=1;j<=i;j++){//col
      stdout.write('$counter ');
      counter++;
    }
    print('');
  }




  for(int i=1;i<=5;i++){
    for(int s=2;s<=i;s++){
      stdout.write(' ');
    }
    for(int j=5;j>=i;j--){
      stdout.write('* ');
    }
    print('');
  }



  int counter1 =1;
  for(int i=1;i<=6;i++){//row
    for(int s=5;s>=i;s--){
      stdout.write(' ');
    }
    for(int j=1;j<=i;j++){//col
      stdout.write('$counter1 ');
      counter1 +=2;
    }
    print('');
  }

}