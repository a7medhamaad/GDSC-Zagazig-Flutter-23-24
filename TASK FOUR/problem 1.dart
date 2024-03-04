class Car {
  String _model;
  int _year;
  double _mileage;
  bool _isAutomatic;

  Car(this._model, this._year, this._mileage, this._isAutomatic);

  String get model {
    return _model;
  }

  int get year {
    return _year;
  }

  double getMileage() {
    return _mileage;
  }

  void updateMileage(double newMileage) {
    _mileage = newMileage;
  }
}

void main() {
  Car myCar = Car("Toyota Camry", 2022, 5000.0, true);

  print("Model: ${myCar.model}");
  print("Year: ${myCar.year}");
  print("Mileage: ${myCar.getMileage()}");

  myCar.updateMileage(6000.0);
  print("Updated Mileage: ${myCar.getMileage()}");
}

//1. Encapsulation 
//• Design a Car class in Dart that encapsulates the following 
//properties: model, year, mileage, and isAutomatic. 
//• Make all properties private and provide public getter //methods 
//for model and year.
//• Create a public method getMileage that returns the current 
//mileage and allows updating the mileage by providing a new 
//value as an argument.