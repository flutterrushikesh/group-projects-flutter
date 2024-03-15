class Login {
  final String username;
  final String password;

  Login({
    required this.username,
    required this.password,
  });

  Map<String, String> loginMap() {
    return {
      'username': username,
      'password': password,
    };
  }

  @override
  String toString() {
    return "{username:$username, password:$password}";
  }
}
