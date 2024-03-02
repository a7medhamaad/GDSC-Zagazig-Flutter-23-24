import 'dart:math';

mixin AreaMixin {
  double calculateArea();
}

mixin PerimeterMixin {
  double calculatePerimeter();
}

class Rectangle with AreaMixin, PerimeterMixin {
  double width;
  double height;

  Rectangle(this.width, this.height);

  
  double calculateArea() {
    return width * height;
  }

  
  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

class Circle with AreaMixin, PerimeterMixin {
  double radius;

  Circle(this.radius);

  
  double calculateArea() {
    return 3.14 * radius * radius;
  }


  double calculatePerimeter() {
    return 2 * 3.14 * radius;
  }
}

class Triangle with AreaMixin, PerimeterMixin {
  double side1;
  double side2;
  double side3;

  Triangle(this.side1, this.side2, this.side3);

 
  double calculateArea() {
    double s = (side1 + side2 + side3) / 2;
    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }

 
  double calculatePerimeter() {
    return side1 + side2 + side3;
  }
}

void main() {
  Rectangle rectangle = Rectangle(4, 5);
  Circle circle = Circle(3);
  Triangle triangle = Triangle(3, 4, 5);

  print('Rectangle Area: ${rectangle.calculateArea()}');
  print('Rectangle Perimeter: ${rectangle.calculatePerimeter()}');

  print('Circle Area: ${circle.calculateArea()}');
  print('Circle Perimeter: ${circle.calculatePerimeter()}');

  print('Triangle Area: ${triangle.calculateArea()}');
  print('Triangle Perimeter: ${triangle.calculatePerimeter()}');
}


//4- Geometric Shape Abstraction:
//Picture yourself as a software developer working on a //project that 
//involves geometric calculations. Your task is to create a //system 
//that can handle various geometric shapes. These shapes //should 
//be organized in a hierarchy, with a base class providing //common 
//functionality like calculating area and perimeter. However, //each 
//specific shape, whether it's a rectangle, circle, or //triangle, has its 
//own formulae for these calculations. How would you design //this 
//system to ensure flexibility and efficiency in handling
//different shapes?