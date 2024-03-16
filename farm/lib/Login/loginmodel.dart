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
