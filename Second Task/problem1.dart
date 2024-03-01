//problem 1. Shopping Cart
//Create a function calculateTotalPrice(cart) that takes a Map
//representing a shopping cart(item name as key, Prices as value)
//and returns the total price.Handle cases where items are not
//found in the Prices Map.
//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$


double calculateTotalPrice(Map<String, double> cart, Map<String, double> prices) {
  double totalPrice = 0.0;

  cart.forEach((item, quantity) {
    if (prices.containsKey(item)) {
      totalPrice += prices[item]! * quantity;
    } else {
      print("Price not found for $item. Skipped from the total calculation.");
    }
  });

  return totalPrice;
}

void main() {
  Map<String, double> cart = {"item1": 2, "item2": 3, "item3": 1};
  Map<String, double> prices = {"item1": 10.0, "item2": 15.0};

  double total = calculateTotalPrice(cart, prices);
  print("Total Price: \$${total.toStringAsFixed(2)}");
}
