void main(List<String> args) {
  Set set = {1,2,3,false,'t','dart',4356.3456};
  print(set);
  set.add(356);
  for(var a in set){
    print(a);
  }
  set.forEach((e)=>print(e));

}