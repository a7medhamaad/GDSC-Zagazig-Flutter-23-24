abstract class Animal {
    void makeSound() {}
}

class Dog implements Animal {
//   @override
    void makeSound() {
        print("Woof!");

    }
}
class Cat implements Animal {
    //   @override
    void makeSound() {
        print("Meow!");
    }
}

void main() {
    var cat=Cat();
    var dog=Dog();
    cat.makeSound();
    dog.makeSound();
}

//2. Polymorphism & Abstraction
//• Create an abstract class Animal in Dart with a method 
//makeSound() that is declared as abstract
//• Define two subclasses, Dog and Cat, that inherit from //Animal 
//and override the makeSound() method to print "Woof!" and 
//"Meow!", respectively