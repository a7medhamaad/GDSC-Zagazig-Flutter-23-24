import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int num = int.parse(stdin.readLineSync()!);

  if (num % 2 == 0) {
    print("$num is even.");
  } else {
    print("$num is odd.");
  }
}
//#######################################
//Problem 6:
 //Ask the user for a number. Depending on whether the number 
  //is even or odd, print out an appropriate message to the user.
