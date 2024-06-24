
void main() {
  String password = "MyPassword11";
  if (!_validatePassword(password)) {
    print("Password is valid!");
  } else {
    print("Password is invalid!");
  }
}




bool _validatePassword(String value) {
  // RegExp regex = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
  RegExp regex = RegExp(r'^(?=.*[0-9])(?=.*[a-zA-Z]).{6,}$');
  // RegExp regex = RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$");
  return regex.hasMatch(value);
}

