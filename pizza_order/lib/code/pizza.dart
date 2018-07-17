class pizza {
  static List<String> sizes = ["Small", "Medium", "Large"];

  String size = sizes.elementAt(0);

  Map<String, bool> toppings = new Map<String, bool>();

  pizza() {
    toppings.putIfAbsent("Pepporoni", () => false);
    toppings.putIfAbsent("Sausage", () => false);
    toppings.putIfAbsent("Cheese", () => false);
    toppings.putIfAbsent("Onions", () => false);
  }
}