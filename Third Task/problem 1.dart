import 'dart:io';

class Laptop {
    String brand;
    String model;
    int ram;

    Laptop(this.brand, this.model, this.ram);

    double calculatePrice() {
        double basePrice = 500; 

        // price based on the brand
        if (brand == 'Dell') {
            basePrice += 200;
        } else if (brand == 'HP') {
            basePrice += 150;
        } else if (brand == 'Lenovo') {
            basePrice += 100;
        } else {
            basePrice +=120;
        }

        //  price based on the model
        if (model == 'XPS') {
            basePrice += 300;
        } else if (model == 'Spectre') {
            basePrice += 250;
        } else if (model == 'ThinkPad') {
            basePrice += 200;
        } else {
            basePrice +=120;
        }

        //  price based on the RAM
        if (ram >= 8) {
            basePrice += (ram - 8) * 50;
        }

        return basePrice;
    }
}

void main() {
    print('Enter the laptop brand:');
    String brand = stdin.readLineSync()!;
    print('Enter the laptop model:');
    String model = stdin.readLineSync()!;
    print('Enter the laptop RAM (in GB):');
    int ram = int.parse(stdin.readLineSync()!);

    Laptop laptop = Laptop(brand, model, ram);
    double price = laptop.calculatePrice();

    print('The price of the laptop is: \$${price.toStringAsFixed(2)}');
}

//1- Laptops Shop:
//Write a dart program using classes and objects about laptops //shop 
//system which calculates the laptop price depending on some 
//features like: brand, model, ram (took it from the user) 
//Note: Suggest prices according to the features.
