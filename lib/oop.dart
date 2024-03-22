class Car{
  String name;
  int price;
  String? color;

  Car(this.name, this.color, [this.price = 20]);
}


void main(){
  Car car = new Car("BMW", "Green");
  print("===> ${car.price}");
  print("===> ${car.color}");
}