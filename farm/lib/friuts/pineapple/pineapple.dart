import 'dart:developer';
import 'package:farm/friuts/pineapple/info3.dart';
import 'package:farm/logindatabase.dart';
import 'package:farm/loginmodel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PineApple extends StatefulWidget {
  const PineApple({super.key});
  @override
  State createState() => _PineApple();
}

class _PineApple extends State {
  TextEditingController custNameController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  List pinOrederList = [];

  @override
  void initState() {
    super.initState();
    log("Init state");
    Future.delayed(Duration.zero, () async {
      List retPinList = await retPinData();
      pinOrederList = retPinList;

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
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
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/pineapple2.png",
                  ),
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
                color: Color.fromARGB(255, 223, 228, 122),
              ),
              alignment: Alignment.center,
              width: 400,
              height: 200,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 186, 185, 185),
                        blurRadius: 8,
                        offset: Offset(5, 5),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: const MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.blue.shade300),
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Info3(),
                          ),
                        );
                      });
                    },
                    child: Text(
                      'Info',
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 23,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 186, 185, 185),
                        blurRadius: 8,
                        offset: Offset(5, 5),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: const MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.blue.shade300),
                    ),
                    onPressed: () {
                      setState(() {
                        bottonSheet();
                      });
                    },
                    child: Text(
                      'Buy',
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 23,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: pinOrederList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.all(15),
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.amber.shade100,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 186, 185, 185),
                                blurRadius: 8,
                                offset: Offset(10, 10),
                              ),
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Cust Name : ${pinOrederList[index].custname}",
                              style: GoogleFonts.jost(
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Quantity : ${pinOrederList[index].quantity}",
                              style: GoogleFonts.jost(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Address : ${pinOrederList[index].address}",
                              style: GoogleFonts.jost(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void bottonSheet() {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Make your order",
                style: GoogleFonts.inter(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: custNameController,
                decoration: const InputDecoration(
                  label: Text("Enter customer name"),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(48, 11, 211, 1),
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              TextFormField(
                controller: quantityController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text("Enter quantity in pics"),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(48, 11, 211, 1),
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              TextFormField(
                controller: addressController,
                maxLines: 3,
                decoration: const InputDecoration(
                  label: Text("Enter your Address"),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(48, 11, 211, 1),
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 35),
              Container(
                width: 200,
                height: 50,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 186, 185, 185),
                      blurRadius: 20,
                      offset: Offset(-3, 6),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.blue.shade300)),
                  onPressed: () async {
                    submitData();
                    List retPinList = await retPinData();
                    pinOrederList = retPinList;
                  },
                  child: Text(
                    "Buy now",
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        );
      },
    );
  }

  void submitData() {
    if (custNameController.text.trim().isNotEmpty &&
        quantityController.text.trim().isNotEmpty &&
        addressController.text.trim().isNotEmpty) {
      PineAppleModel pinObj = PineAppleModel(
          custname: custNameController.text,
          quantity: quantityController.text,
          address: addressController.text);
      insertPin(pinObj);
    }
    Navigator.of(context).pop();
    clearController();
  }

  void clearController() {
    custNameController.clear();
    quantityController.clear();
    addressController.clear();
  }
}
