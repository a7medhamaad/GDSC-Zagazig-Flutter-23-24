void main() {
  double distance = 25; 
  double speed = 40; 

  double timeInHours = distance / speed;
  double timeInMinutes = timeInHours * 60;

  print("Time taken to reach the office: ${timeInMinutes.toStringAsFixed(2)} minutes");
}