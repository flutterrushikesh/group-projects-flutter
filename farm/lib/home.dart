import 'package:farm/friuts/banana/banana.dart';
import 'package:farm/friuts/pineapple/pineapple.dart';
import 'package:farm/vegetable/bhendi/bhendi.dart';
import 'package:flutter/material.dart';
import 'package:farm/vegetable/tamato/tamato.dart';

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
          "Information of Daily Foods",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          const Icon(
            Icons.favorite_border,
            color: Colors.red,
          ),
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
        backgroundColor: const Color.fromARGB(255, 63, 169, 67),
      ),
      body: Container(
        color: Colors.grey.shade300,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Center(
                    child: Container(
                      width: 150,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue.shade200,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Colors.grey.shade500,
                              blurStyle: BlurStyle.normal,
                              offset: const Offset(5, 5),
                            )
                          ]),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Vegetable's",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              // First Row Vegetables
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    SingleChildScrollView(
                      child: Row(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const Tamato(),
                                  ),
                                );
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: 200,
                              width: 150,
                              // color: Colors.grey,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/image3.png",
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
                                      color: Color.fromARGB(255, 179, 176, 176),
                                      offset: Offset(10, 10),
                                      blurRadius: 8),
                                ],
                              ),
                              child: const Text(
                                "Tamato",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const Ladyfinger(),
                                  ),
                                );
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: 200,
                              width: 150,
                              // color: Colors.grey,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/bhendi.png",
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
                              child: const Text(
                                "Ladyfinger",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
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
                                  "assets/images/flower.png",
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
                            child: const Text(
                              "Cauliflower  ",
                              style: TextStyle(
                                backgroundColor: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
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
                                  "assets/images/gobhi.png",
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
                                  "assets/images/mashroom.png",
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Fruits 2nd Row
              const SizedBox(height: 5),
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Center(
                    child: Container(
                      width: 150,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue.shade200,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Colors.grey.shade500,
                              blurStyle: BlurStyle.normal,
                              offset: const Offset(5, 5),
                            )
                          ]),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Fruits",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // First Row Vegetables
                ],
              ),
              const SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const PineApple(),
                            ),
                          );
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 200,
                        width: 150,
                        // color: Colors.grey,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/fruits/image.png",
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
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const Banana(),
                            ),
                          );
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 200,
                        width: 150,
                        // color: Colors.grey,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/fruits/banana.png",
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
                            "assets/fruits/bit.png",
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
                            "assets/fruits/mango.png",
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
                            "assets/fruits/stwabbery.png",
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
                  ],
                ),
              ),
              // Daily Foods 3rd Row
              const SizedBox(height: 5),
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Center(
                    child: Container(
                      width: 170,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue.shade200,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Colors.grey.shade500,
                              blurStyle: BlurStyle.normal,
                              offset: const Offset(5, 5),
                            )
                          ]),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Dairy Products",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // First Row Vegetables
                ],
              ),
              const SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
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
                            "assets/pulses/pulses.png",
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
                            "assets/pulses/rice.png",
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
                            "assets/fruits/bit.png",
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
                            "assets/fruits/mango.png",
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
                            "assets/fruits/stwabbery.png",
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
                  ],
                ),
              ),
              // Daily Foods 4 Row
              const SizedBox(height: 5),
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Center(
                    child: Container(
                      width: 150,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue.shade200,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Colors.grey.shade500,
                              blurStyle: BlurStyle.normal,
                              offset: const Offset(5, 5),
                            )
                          ]),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Daily Foods",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // First Row Vegetables
                ],
              ),
              const SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
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
                            "assets/pulses/pulses.png",
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
                            "assets/pulses/rice.png",
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
                            "assets/fruits/bit.png",
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
                            "assets/fruits/mango.png",
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
                            "assets/fruits/stwabbery.png",
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
                  ],
                ),
              ),
              // Daily Foods 5th Row
              const SizedBox(height: 5),
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Center(
                    child: Container(
                      width: 150,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue.shade200,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Colors.grey.shade500,
                              blurStyle: BlurStyle.normal,
                              offset: const Offset(5, 5),
                            )
                          ]),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Pulses",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // First Row Vegetables
                ],
              ),
              const SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
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
                            "assets/pulses/pulses.png",
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
                            "assets/pulses/rice.png",
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
                            "assets/fruits/bit.png",
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
                            "assets/fruits/mango.png",
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
                            "assets/fruits/stwabbery.png",
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
