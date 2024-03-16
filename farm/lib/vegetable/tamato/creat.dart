import 'package:flutter/material.dart';

class TamatoDemo extends StatefulWidget {
  const TamatoDemo({super.key});
  @override
  State createState() => _TamatoDemo();
}

class _TamatoDemo extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Text(
          "Buy Vegetable's",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
        backgroundColor: Colors.red,
      ),
    );
  }
}
