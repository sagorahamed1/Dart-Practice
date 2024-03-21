/// Map have Key & Value pairs
///Key has to be Unique
///Value has to be Duplicate
library;


void main() {
  Map<String, dynamic> names = {"name": "Sagor Ahamed", "age": 25};


  ///-------------print this map-------------------->
  print("===> names map : $names");



  ///------------add key value in map--------------->
  names["degenation"] = "Flutter Developer";
  print("===> degenation add : ");



  /// -----------access data by key----------------->
  print("===> key :  ${names["name"]}");



  ///-----------print map by for in loop----------->
  for (var keys in names.keys) {
    print("===> keys :  ${keys}");
  }



  ///-----------print map by for in loop----------->
  for (var value in names.values) {
    print("===> values : ${value}");
  }



  ///----------for each--------------------------->
  names.forEach((key, value) => print("===> for Each : $key and $value"));



  ///----------map update by update method-------->
  names.update("age", (value) => 30);
  print("===> update : $names");



  ///---------remove from map by key name-------->
  names.remove("name");
  print("===> remove : ${names}");



  ///--------check map is empty or not----------->
  if (names.isEmpty) {
    print("===> names isEmpty");
  } else {
    print("===> names isNotEmpty");
  }


  ///-------------map clear method---------------->
  names.clear();
  print("===> clear : $names");
}
