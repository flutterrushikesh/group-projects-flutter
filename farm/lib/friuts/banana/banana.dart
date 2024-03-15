import 'package:flutter/material.dart';

class Banana extends StatefulWidget {
  const Banana({super.key});
  @override
  State createState() => _Banana();
}

class _Banana extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Banana",
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
        backgroundColor: const Color.fromARGB(255, 245, 240, 101),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/banana1.png",
                      ),
                      // opacity: 0.3,
                      fit: BoxFit.fill,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 179, 176, 176),
                          offset: Offset(10, 10),
                          blurRadius: 8),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Color.fromARGB(255, 223, 228, 122)),
                alignment: Alignment.center,
                width: 400,
                height: 250,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 179, 176, 176),
                          offset: Offset(10, 10),
                          blurRadius: 8),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Color.fromARGB(255, 223, 228, 122)),
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
                            "Banana Information",
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
                              fontWeight: FontWeight.w500,
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
      ),
    );
  }
}
