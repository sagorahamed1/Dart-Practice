import 'dart:io';
import 'dart:math';

void main() {





  final int fabricSize = 20;
  final int dartboardRadius = 5;

  // Create a 2D list to represent the fabric
  List<List<String>> fabric = List.generate(
      fabricSize, (_) => List.generate(fabricSize, (_) => ' '));

  // Calculate the center of the fabric
  int centerX = fabricSize ~/ 2;
  int centerY = fabricSize ~/ 2;

  // Iterate through each point on the fabric
  for (int y = 0; y < fabricSize; y++) {
    for (int x = 0; x < fabricSize; x++) {
      // Calculate the distance from the current point to the center
      double distance = sqrt(pow(x - centerX, 2) + pow(y - centerY, 2));

      // Check if the distance is less than or equal to the dartboard radius
      if (distance <= dartboardRadius) {
        fabric[y][x] = 'X'; // Mark the point as part of the dartboard
      }
    }
  }

  // Print the fabric
  for (int y = 0; y < fabricSize; y++) {
    print(fabric[y].join());
  }














  int rows = 5;
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < rows - i - 1; j++) {}
    for (int k = 0; k < 2 * i + 1; k++) {
      print('*');
    }
    print('');
  }


  ///-----------------------leap year-------------------->
  print("Type a year here__");
  int year = int.parse(stdin.readLineSync()!);
  if ((year % 4 == 0 && year % 100 != 0 || year % 400 == 0)) {
    print("This is leap year");
  } else {
    print("This is not leap year");
  }
}
