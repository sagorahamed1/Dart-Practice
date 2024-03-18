void main(){
  List<int> listNo = [1,2,3,4,5,6,7,8,9,10];
  List <String> namesList = ["Sagor Ahamed", "Palash", "Towhidul Islam", "Ahad Hossain", "Fayej", "Sahinur", "Aumi", "Afran kazi"];


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

}