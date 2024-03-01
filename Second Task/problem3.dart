Map<String, dynamic> analyzeGrades(List<int> grades) {
  if (grades.isEmpty) {
    return {
      "numberOfStudents": 0,
      "averageGrade": null,
      "numberOfValedictorians": 0,
      "numberOfFailedStudents": 0,
    };
  }

  double sum = 0;
  int valedictorianCount = 0;
  int failedCount = 0;

  for (int grade in grades) {
    sum += grade;
    if (grade >= 85 && grade <= 100) {
      valedictorianCount++;
    } else if (grade < 40) {
      failedCount++;
    }
  }

  double averageGrade = sum / grades.length;

  return {
    "numberOfStudents": grades.length,
    "averageGrade": averageGrade,
    "numberOfValedictorians": valedictorianCount,
    "numberOfFailedStudents": failedCount,
  };
}

void main() {
  List<int> studentGrades1 = [75, 90, 60, 95, 40];
  List<int> studentGrades2 = [];

  Map<String, dynamic> analysis1 = analyzeGrades(studentGrades1);
  Map<String, dynamic> analysis2 = analyzeGrades(studentGrades2);

  print("Analysis 1: $analysis1");
  print("Analysis 2: $analysis2");
}