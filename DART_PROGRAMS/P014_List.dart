void main(List<String> args) {
  //<generics>
  List list = [1,2,3,456.456,false,'r','dart language',1,23];
  print(list);
  print(list[1]);
  print(list.length);
  list.add(345);
  print(list);
  list.remove(false);
  print(list);
  print(list.contains(1));
  print(list.elementAt(4));
  list.insert(1, 'java');
  print(list);
  print('iterate using for loop');
  for(int index=0;index<list.length;index++){
    print(list[index]);
  }
  print('iterate using for each');
  for(var data in list){
    print(data);
  }
  
  list.forEach((e) => print(e));
}