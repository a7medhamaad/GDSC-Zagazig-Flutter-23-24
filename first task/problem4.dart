import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int num = int.parse(stdin.readLineSync()!);
  int square = num * num;
  print("Square of $num is $square");
}

//#############################################
//Problem 4:
// Write a program to print a square of a number using user input.
