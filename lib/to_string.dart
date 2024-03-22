class Person {
  String name;
  int age;

  Person({required this.name, required this.age});

  @override
  String toString() {
    return "Person(Name : $name, \n        Age : $age)";
  }

  factory Person.json(Map<String, dynamic> json) {
    return Person(name: json['name'], age: json['age']);
  }

  Map<String, dynamic> map = {};

}

void main() {
  Person person = Person(name: "Sagor Ahamed", age: 25);
  print(person);
  print(person.name);
}
