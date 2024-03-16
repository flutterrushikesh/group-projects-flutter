class Tomato {
  String name;
  String quantity;
  String address;

  Tomato({required this.name, required this.quantity, required this.address});

  Map<String, String> tomatoMap() {
    return {
      'name': name,
      'quantity': quantity,
      'address': address,
    };
  }
}
