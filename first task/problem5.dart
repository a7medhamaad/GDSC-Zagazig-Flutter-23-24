void main() {
  String stringWithSpaces = "This is a string with spaces";
  String stringWithoutSpaces = stringWithSpaces.replaceAll(' ', '');
  print(stringWithoutSpaces);
}