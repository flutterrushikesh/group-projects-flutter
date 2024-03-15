import 'package:flutter/material.dart';

class Tamato extends StatefulWidget {
  const Tamato({super.key});
  @override
  State createState() => _Tamato();
}

class _Tamato extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tamato",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          PopupMenuButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Row(
                  children: [
                    const Icon(Icons.settings),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text("Setting"),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    const Icon(Icons.share),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text("Share"),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    const Icon(Icons.info),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text("Info"),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
        backgroundColor: Colors.red,
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
                        color: Color.fromARGB(255, 179, 176, 176),
                        offset: Offset(10, 10),
                        blurRadius: 8),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Color.fromARGB(255, 228, 180, 177)),
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
                          "Tamato Information",
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
    );
  }
}
