
void main(){


  ///-----------------------leap year-------------------->
  int year = 2000;
  if((year % 4 == 0 && year % 100 != 0 || year % 400 == 0)){
    print("this is leap year");
  }else{
    print("This is not leap year");
  }
}