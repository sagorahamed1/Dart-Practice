void main() {
  List<int> listNo = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<String> namesList = [
    "Sagor Ahamed",
    "Palash",
    "Towhidul Islam",
    "Ahad Hossain",
    "Fayej",
    "Sahinur",
    "Aumi",
    "Afran kazi"
  ];
  List<Friend> friendsList = [
    Friend(name: "Sagor", age: 25),
    Friend(name: "Siam", age: 30),
    Friend(name: "Swapon", age: 23)
  ];



  ///---------check list is empty or not----->
  print(listNo.isEmpty);

  ///---------name start with "A" letter------------>
  Iterable visiableName = namesList.where((element) {
    return element.contains("A");
  });
  print('===>$visiableName');

  ///----------even or odd number print------->
  Iterable<int> evenNo = listNo.where((element) => (element % 2 == 0));
  print("====>$evenNo");

  ///------------access all name by forEach ---------<>
  namesList.forEach((element) {
    print(element);
  });

  ///---------sum all number from a list-------------->
  int sum = 0;
  listNo.forEach((element) => sum += element);
  print("===> $sum");


  ///-------------access list with model class-------------------------->
  friendsList.forEach((friend) => print("====> Name : ${friend.name} Age : ${friend.age}"));


  ///==================access first or last letter of names list============>
  List letter = [];
  namesList.forEach((name) => letter.add(name.split("").last));
  print("===> letter: $letter");

  ///=================calculate total number from a list===========>
  int total = listNo.fold( 0, (prev, num) => prev + num);
  print("===> Total : $total");


  ///=================calculate total number from a list===========>
  int totalAge = friendsList.fold( 0, (prev, fried) => prev + fried.age);
  print("===> Total Age : $totalAge");


  ///==============small to big number && reversed from a number list=====>
  listNo.sort();
  print("===> Sort : ${listNo}");
  print("===> Reversed : ${listNo.reversed}");

  ///===============ganerate random list items==============>
  listNo.shuffle();
  print("===> Random : $listNo");

  ///==============add multi list in a list============>
  List addTwoList = [...listNo,...namesList];
  print("===> Add Two List : $addTwoList");



  ///-----------------list.map------------------->
  listNo.map((e) => print("===> map : $e")).toList();


  print("===> name List Reversed ${namesList.reversed}");
}

class Friend {
  final String name;
  final int age;

  Friend({required this.name, required this.age});
}
