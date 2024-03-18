import 'package:farm/daily/rice/rice.dart';
import 'package:farm/daily/wheat/wheat.dart';
import 'package:farm/dairy/curd/curd.dart';
import 'package:farm/dairy/milk/milk.dart';
import 'package:farm/friuts/banana/banana.dart';
import 'package:farm/friuts/pineapple/pineapple.dart';
import 'package:farm/vegetable/bhendi/bhendi.dart';
import 'package:farm/vegetable/flowers/flower.dart';
import 'package:flutter/material.dart';
import 'package:farm/vegetable/tamato/tamato.dart';
// import 'package:flutter/widgets.dart';

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
          PopupMenuButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            itemBuilder: (context) => [
              // PopupMenuItem(
              //   child: Row(
              //     children: [
              //       const Icon(Icons.settings),
              //       Container(
              //         margin: const EdgeInsets.only(left: 10),
              //         child: const Text("Setting"),
              //       ),
              //     ],
              //   ),
              // ),
              PopupMenuItem(
                child: Row(
                  children: [
                    const Icon(Icons.share),
                    GestureDetector(
                      // onTap: () {
                      //   setState(() {
                      //     Navigator.of(context).push(
                      //       MaterialPageRoute(
                      //         builder: (context) => const Share(),
                      //       ),
                      //     );
                      //   });
                      // },
                      // margin: const EdgeInsets.only(left: 10),
                      child: const Text("   Share"),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    const Icon(Icons.info),
                    GestureDetector(
                      // onTap: () {
                      //   setState(() {
                      //     Navigator.of(context).push(
                      //       MaterialPageRoute(
                      //         builder: (context) => const Info(),
                      //       ),
                      //     );
                      //   });
                      // },
                      // margin: const EdgeInsets.only(left: 10),
                      child: const Text("   Info"),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
        backgroundColor: const Color.fromARGB(255, 96, 197, 99),
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
                              width: 160,
                              // color: Colors.grey,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/tamato.png",
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
                                    blurRadius: 8,
                                  ),
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
                              width: 160,
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
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const Flower(),
                                  ),
                                );
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: 200,
                              width: 160,
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
                                "Flower",
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
                            width: 160,
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
                            width: 160,
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
                        width: 160,
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
                        width: 160,
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
                        width: 160,
                        // color: Colors.grey,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/fruits/greph.png",
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
                      width: 160,
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
                      width: 160,
                      // color: Colors.grey,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/fruits/stwa.png",
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
                ],
              ),
              // 3rd Row Vegetables
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
                              builder: (context) => const Milk(),
                            ),
                          );
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 200,
                        width: 160,
                        // color: Colors.grey,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/dairy/milk.png",
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
                              builder: (context) => const Curd(),
                            ),
                          );
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 200,
                        width: 160,
                        // color: Colors.grey,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/dairy/curd.png",
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
                              builder: (context) => const Curd(),
                            ),
                          );
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 200,
                        width: 160,
                        // color: Colors.grey,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/dairy/panner.png",
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
                        width: 160,
                        // color: Colors.grey,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/dairy/ice.png",
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
                        width: 160,
                        // color: Colors.grey,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/dairy/cheese.png",
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
                              blurRadius: 8,
                            ),
                          ],
                        ),
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
                ],
              ),
              // First Row Vegetables
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
                              builder: (context) => const Rice1(),
                            ),
                          );
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 200,
                        width: 160,
                        // color: Colors.grey,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/foods/rice.png",
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
                              blurRadius: 8,
                            ),
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
                              builder: (context) => const Wheat(),
                            ),
                          );
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 200,
                        width: 160,
                        // color: Colors.grey,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/foods/aata.png",
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
                              blurRadius: 8,
                            ),
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
                        width: 160,
                        // color: Colors.grey,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/foods/poha.png",
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
                              blurRadius: 8,
                            ),
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
                        width: 160,
                        // color: Colors.grey,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/foods/rava.png",
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
                              blurRadius: 8,
                            ),
                          ],
                        ),
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
                        width: 160,
                        // color: Colors.grey,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/pulses/mug.png",
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
                              blurRadius: 8,
                            ),
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
                        width: 160,
                        // color: Colors.grey,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/pulses/chana.png",
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
                              blurRadius: 8,
                            ),
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
                        width: 160,
                        // color: Colors.grey,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/pulses/masoor.png",
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
                              blurRadius: 8,
                            ),
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
                        width: 160,
                        // color: Colors.grey,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/pulses/tur.png",
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
                              blurRadius: 8,
                            ),
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
                        width: 160,
                        // color: Colors.grey,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/foods/rava.png",
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
                              blurRadius: 8,
                            ),
                          ],
                        ),
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
