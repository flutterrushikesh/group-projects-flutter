import 'package:farm/friuts/banana/info5.dart';
import 'package:farm/logindatabase.dart';
import 'package:farm/loginmodel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Banana extends StatefulWidget {
  const Banana({super.key});
  @override
  State createState() => _Banana();
}

class _Banana extends State {
  TextEditingController custNameController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  List bananaOrderList = [];

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      List retBananaList = await retBananaData();
      bananaOrderList = retBananaList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text(
          "Banana",
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
        backgroundColor: Colors.yellow.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/banana1.png",
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
                // color: Color.fromARGB(255, 129, 228, 122),
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
                            builder: (context) => const Info5(),
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
            Expanded(
              child: ListView.builder(
                itemCount: bananaOrderList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Slidable(
                    closeOnScroll: true,
                    endActionPane: ActionPane(
                      extentRatio: 0.2,
                      motion: const DrawerMotion(),
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const SizedBox(height: 0),
                              GestureDetector(
                                onTap: () {
                                  setState(() {});
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade300,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {});
                                },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        20,
                                      ),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
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
                          // Text(
                          //   tomatoOrderList[index].orderId,
                          // ),
                          Text(
                            bananaOrderList[index].custname,
                            style: GoogleFonts.jost(
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${bananaOrderList[index].quantity} darzan",
                            style: GoogleFonts.jost(
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            bananaOrderList[index].address,
                            style: GoogleFonts.jost(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
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
                decoration: const InputDecoration(
                  label: Text("Enter quantity in darzan"),
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
                    List retBananaList = await retBananaData();
                    bananaOrderList = retBananaList;
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
      BananaModel orderObj = BananaModel(
          custname: custNameController.text,
          quantity: quantityController.text,
          address: addressController.text);

      insertBanana(orderObj);
      clearControllers();
    }
    Navigator.of(context).pop();
  }

  void clearControllers() {
    custNameController.clear();
    quantityController.clear();
    addressController.clear();
  }
}
