import 'package:flutter/material.dart';

class Info3 extends StatefulWidget {
  const Info3({super.key});
  @override
  State createState() => _Info3();
}

class _Info3 extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Pineapple",
          style: TextStyle(
            color: Colors.black,
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
        backgroundColor: Colors.amber.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 159, 158, 158),
                        offset: Offset(10, 5),
                        blurRadius: 8),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Color.fromARGB(255, 255, 254, 168)),
              alignment: Alignment.center,
              width: 400,
              height: 520,
              child: Container(
                padding: const EdgeInsets.all(8),
                child: const Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Pineapple Information",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '''  Calories: 16
  Fat: 0.2g
  Sodium: 5mg
  Carbohydrates: 3.5g
  Fiber: 1.1g
  Sugars: 2.4g
  Protein: 0.8g
  Vitamin C: 12.5mg
  Vitamin K: 7.2mcg
  Potassium: 215.7mg
  Vitamin A: 38.2mcg
  Folate: 13.7mcg
  Beta carotene: 408.6mcg
  Lycopene: 2341.4mcg
  Vitamin E: 0.5mg
  ''',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
