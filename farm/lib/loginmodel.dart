class Login {
  String name;
  String phone;
  String username;
  String password;

  Login({
    required this.name,
    required this.phone,
    required this.username,
    required this.password,
  });

  Map<String, String> loginMap() {
    return {
      'name': name,
      'phone': phone,
      'username': username,
      'password': password,
    };
  }

  @override
  String toString() {
    return "{name:$name, phone:$phone,username:$username, password:$password}";
  }
}

//Tomato Model class
class Tomato {
  int? orderId;
  String name;
  String quantity;
  String address;

  Tomato(
      {this.orderId,
      required this.name,
      required this.quantity,
      required this.address});

  Map<String, String> tomatoMap() {
    return {
      'name': name,
      'quantity': quantity,
      'address': address,
    };
  }

  @override
  String toString() {
    return '{orderId:$orderId, name:$name, quantity:$quantity, address:$address}';
  }
}
