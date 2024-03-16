// import 'package:farm/vegetable/tamato/creat.dart';
// import 'package:farm/vegetable/tamato/info1.dart';
import 'package:farm/vegetable/tamato/info1.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Tamato extends StatefulWidget {
  const Tamato({super.key});
  @override
  State createState() => _Tamato();
}

class _Tamato extends State {
  TextEditingController custNameController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController addressController = TextEditingController();
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
                              builder: (context) => const Info1(),
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
              )
            ],
          ),
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
                  label: Text("Enter quantity in KG"),
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
                  onPressed: () {},
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
}
