import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State createState() => _HomePage();
}

class _HomePage extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Farmer's Friend",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 63, 169, 67),
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.all(10)),
              const Text(
                "Vegetable's",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    SingleChildScrollView(
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/image3.png",
                                ),
                                // opacity: 0.3,
                                fit: BoxFit.fill,
                              ),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/image1.png",
                                ),
                                // opacity: 0.3,
                                fit: BoxFit.fill,
                              ),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/image.png",
                                ),
                                // opacity: 0.3,
                                fit: BoxFit.fill,
                              ),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              const Text(
                "Vegetable's",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    SingleChildScrollView(
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/image3.png",
                                ),
                                // opacity: 0.3,
                                fit: BoxFit.fill,
                              ),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/image1.png",
                                ),
                                // opacity: 0.3,
                                fit: BoxFit.fill,
                              ),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/image.png",
                                ),
                                // opacity: 0.3,
                                fit: BoxFit.fill,
                              ),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              const Text(
                "Vegetable's",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    SingleChildScrollView(
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/image3.png",
                                ),
                                // opacity: 0.3,
                                fit: BoxFit.fill,
                              ),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/image1.png",
                                ),
                                // opacity: 0.3,
                                fit: BoxFit.fill,
                              ),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/image.png",
                                ),
                                // opacity: 0.3,
                                fit: BoxFit.fill,
                              ),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              const Text(
                "Vegetable's",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    SingleChildScrollView(
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/image3.png",
                                ),
                                // opacity: 0.3,
                                fit: BoxFit.fill,
                              ),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/image1.png",
                                ),
                                // opacity: 0.3,
                                fit: BoxFit.fill,
                              ),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/image.png",
                                ),
                                // opacity: 0.3,
                                fit: BoxFit.fill,
                              ),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              const Text(
                "Vegetable's",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    SingleChildScrollView(
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/image3.png",
                                ),
                                // opacity: 0.3,
                                fit: BoxFit.fill,
                              ),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/image1.png",
                                ),
                                // opacity: 0.3,
                                fit: BoxFit.fill,
                              ),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/image.png",
                                ),
                                // opacity: 0.3,
                                fit: BoxFit.fill,
                              ),
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            width: 150,
                            // color: Colors.grey,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 187, 184, 184),
                                    offset: Offset(10, 10),
                                    blurRadius: 8),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
