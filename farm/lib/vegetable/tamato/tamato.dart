import 'package:farm/vegetable/tamato/creat.dart';
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
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Text(
          "Tamato",
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
                        "assets/images/tamato2.png",
                      ),
                      // opacity: 0.9,
                      // opacity: 0.3,
                      fit: BoxFit.fill,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 179, 176, 176),
                        offset: Offset(10, 10),
                        blurRadius: 8,
                      ),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Color.fromARGB(255, 228, 163, 122)),
                alignment: Alignment.center,
                width: 400,
                height: 200,

                // padding: const EdgeInsets.all(8),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const TamatoDemo(),
                      ),
                    );
                  });
                },
                child: Center(
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 126, 126, 126),
                          blurRadius: 8,
                          blurStyle: BlurStyle.normal,
                          offset: Offset(10, 10),
                        ),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      color: Colors.blue,
                    ),
                    child: const Center(
                      child: Text(
                        "Buy",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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
