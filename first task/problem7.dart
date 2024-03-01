void main() {
  double distance = 25; 
  double speed = 40; 

  double timeInHours = distance / speed;
  double timeInMinutes = timeInHours * 60;

  print("Time taken to reach the office: ${timeInMinutes.toStringAsFixed(2)} minutes");
}
//######################################################
//Problem 7:
// Suppose your distance to the office from home is 25 km and 
//you travel 40 km per hour. Write a program to calculate time 
//taken to reach the office in minutes. 
//Formula= (distance) / (speed
