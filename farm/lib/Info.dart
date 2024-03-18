import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});
  @override
  State createState() => _About();
}

class _About extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "About Us",
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
        backgroundColor: const Color.fromARGB(255, 116, 206, 107),
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
                  color: Color.fromARGB(255, 180, 232, 168)),
              alignment: Alignment.center,
              width: 400,
              height: 350,
              child: Container(
                padding: const EdgeInsets.all(8),
                child: const Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Foods Information",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '''  Food is one of the basic necessities 
  of life. 
  Food contains nutrients 
  substances essential for the growth,
  repair,and maintenance of body 
  tissues and for regulation of vital
  processes.
  Nutrients provide the energy our 
  bodies need to function.
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
