/// Map have Key & Value pairs
///Key has to be Unique
///Value has to be Duplicate
library;

void main(){
   Map <String, dynamic> names =
   {
     "name" : "Sagor Ahamed",
     "age" : 25
   };


   ///-------------print this map-------------------->
   print(names);

   ///------------add key value in map--------------->
   names["degenation"]= "Flutter Developer";
   print(names);

   /// -----------access data by key----------------->
   print("===> ${names["name"]}");

   ///-----------print map by for in loop----------->
   for(var keys in names.keys){
     print("===> ${keys}");
   }

}