void main(List<String> args) {
  Map map =
  {
    1 : 'c',//entry
    2 : 'c++',
    'java':3,
    45.45 : 'dart',
    false : true,
    5 : 'python',
  };
  print(map);

  map.containsKey(1);

  Iterable<MapEntry> entry = map.entries;
  print(entry);
  for(var a in entry){
    print(a);
    print(a.key);
    print(a.value);
  }

  Iterable<MapEntry> set = map.entries;
  print(set);
  for(var i in set){
    print(i);
  }
}