import 'dart:io';
void main() {
  ///------------list view items 18------------------------>
  int items = 18;

  ///---------after 5 itmes show a google ads-------------->
  for (int i = 1; i <= items; i++) {
    if (i % 5 == 0) {
      ///----------------last items no need ads----------->
      if (i % 5 == 0 && items != i) {
        print("****** Google Ads *******");
      } else {
        null;
      }
    } else {
      print("List view items");
    }
  }
  print("=================================================>");



  for (int j = 0; j <= 7; j++) {
    for(int i = 0; i<=j; i++){
       stdout.write(" * ");
    }
     stdout.writeln();
  }
}
