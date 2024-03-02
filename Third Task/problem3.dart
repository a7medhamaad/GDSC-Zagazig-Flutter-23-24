class Employee {
  String name;
  int age;
  String department;

  Employee(this.name, this.age, this.department);

  void displayDetails() {
    print('Name: $name');
    print('Age: $age');
    print('Department: $department');
  }
}

class Manager extends Employee {
  int numberOfEmployees;

  Manager(String name, int age, String department, this.numberOfEmployees)
      : super(name, age, department);


  void displayDetails() {
    super.displayDetails();
    print('Number of Employees: $numberOfEmployees');
  }
}

class Worker extends Employee {
  String shift;

  Worker(String name, int age, String department, this.shift)
      : super(name, age, department);


  void displayDetails() {
    super.displayDetails();
    print('Shift: $shift');
  }
}

void main(){
  Employee employee = Employee('John Doe', 30, 'IT');
  Manager manager = Manager('Jane Smith', 40, 'HR', 10);
  Worker worker = Worker('Mike Johnson', 25, 'Production', 'Night');

  employee.displayDetails();
  print('---');
  manager.displayDetails();
  print('---');
  worker.displayDetails();
}


//3- Employee Organization Structure:
//Imagine you're tasked with organizing an employee hierarchy //for a 
//company. Your goal is to design a system where you have a //base 
//category of employees, each with their own set of details. 
//However, there are different types of employees, such as 
//managers and workers, each with their own unique attributes. //How 
//would you structure this system to ensure that common //attributes 
//are inherited while allowing for specific details to be added //for 
//different employee types?