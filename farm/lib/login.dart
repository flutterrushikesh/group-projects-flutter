import 'package:farm/logindatabase.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home.dart';
import 'loginmodel.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State createState() => _LoginScreenState();
}

class _LoginScreenState extends State {
  //Controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  bool isLogin = false;

  void loginSuccess(List obj) {
    // print(obj);
    for (int i = 0; i < obj.length; i++) {
      if (obj[i].username == usernameController.text &&
          obj[i].password == passwordController.text) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Login sucsessful"),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("User not found"),
          ),
        );
      }
    }
  }

  bool isShowPass = false;
  Icon isTogglePass() {
    if (isShowPass == true) {
      return const Icon(Icons.visibility);
    } else {
      return const Icon(Icons.visibility_off);
    }
  }

  bool hideText() {
    if (isShowPass == true) {
      return false;
    } else {
      return true;
    }
  }

  Scaffold isLoginScreen() {
    if (isLogin == false) {
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
                height: 25,
              ),
              const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(40),
                height: 340,
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
                          hintText: "Enter username",
                          prefixIcon: Icon(Icons.person),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter username";
                          } else {
                            return null;
                          }
                        }),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: hideText(),
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isShowPass = !isShowPass;
                            });
                          },
                          child: isTogglePass(),
                        ),
                        hintText: "Enter password",
                        prefixIcon: const Icon(
                          Icons.lock,
                        ),
                      ),
                      textInputAction: TextInputAction.done,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter password";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 43,
                          width: 220,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 154, 147, 147),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: Offset(-5, 5),
                              )
                            ],
                          ),
                          child: ElevatedButton(
                            onPressed: () async {
                              List userData = await retData();
                              // print(userData);
                              setState(() {
                                loginSuccess(userData);
                                clearControllers();
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
                                Color.fromARGB(255, 6, 145, 38),
                              ),
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
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isLogin = true;
                            });
                          },
                          child: Text(
                            "Create account",
                            style: GoogleFonts.quicksand(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    } else {
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
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "Sign in...",
                style: GoogleFonts.lato(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              // const SizedBox(
              //   height: 5,
              // ),
              Container(
                margin: const EdgeInsets.all(40),
                height: 375,
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
                    TextFormField(
                      controller: nameController,
                      autofocus: false,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                        ),
                        hintText: "Enter name",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter name";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      controller: usernameController,
                      autofocus: false,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_4_outlined),
                        hintText: "username",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter username";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      controller: phoneController,
                      autofocus: false,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        hintText: "Enter phone no",
                      ),
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter phone number";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      controller: passwordController,
                      autofocus: false,
                      obscureText: hideText(),
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isShowPass = !isShowPass;
                            });
                          },
                          child: isTogglePass(),
                        ),
                        hintText: "Enter password",
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter password";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 43,
                          width: 220,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 154, 147, 147),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: Offset(-5, 5),
                              )
                            ],
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                addData();
                                clearControllers();
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
                                Color.fromARGB(255, 6, 145, 38),
                              ),
                            ),
                            child: Text(
                              "Sign in",
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

  @override
  Widget build(BuildContext context) {
    return isLoginScreen();
  }

  void addData() {
    if (usernameController.text.trim().isNotEmpty &&
        nameController.text.trim().isNotEmpty &&
        passwordController.text.trim().isNotEmpty &&
        phoneController.text.trim().isNotEmpty) {
      Login userInfo = Login(
        name: nameController.text,
        username: usernameController.text,
        password: passwordController.text,
        phone: phoneController.text,
      );
      insertData(userInfo);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Details saved"),
        ),
      );
      isLogin = false;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please enter details"),
        ),
      );
    }
  }

  void clearControllers() {
    nameController.clear();
    usernameController.clear();
    passwordController.clear();
    phoneController.clear();
  }
}
