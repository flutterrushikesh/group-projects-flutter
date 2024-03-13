import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:farm/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State createState() => _LoginScreenState();
}

class _LoginScreenState extends State {
  //Controllers
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/login.png",
            ),
            // opacity: 0.3,
            fit: BoxFit.fill,
          ),
          // color: Color.fromARGB(255, 52, 146, 63),
          // gradient: LinearGradient(
          //   colors: [
          //     Color.fromARGB(255, 39, 150, 43),
          //     Color.fromARGB(255, 137, 221, 157),
          //   ],
          //   begin: Alignment.bottomRight,
          //   end: Alignment.topLeft,
          // ),
          // borderRadius: BorderRadius.only(
          //   bottomLeft: Radius.circular(500),
          //   // bottomRight: Radius.circular(150),
          // ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 115,
            ),
            Text(
              "Welcome",
              style: GoogleFonts.inter(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(40),
              height: 339,
              width: 300,
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/login2.png",
                  ),
                  // opacity: 0.9,
                  // opacity: 0.3,
                  fit: BoxFit.fill,
                ),
                // color: Color.fromARGB(65, 216, 212, 212),
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 0.0,
                    blurRadius: 100,
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login here...",
                    style: GoogleFonts.quicksand(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                      label: Text("Enter username"),
                      prefixIcon: Icon(Icons.person),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 6, 124, 145),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            10,
                          ),
                        ),
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      label: Text("Enter username"),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 6, 124, 145)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            10,
                          ),
                        ),
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 43,
                        width: 220,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ),
                              );
                            });
                          },
                          style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 6, 145, 38)),
                          ),
                          child: Text(
                            "Login",
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
