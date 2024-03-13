import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        ),
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 39, 150, 43),
              Color.fromARGB(255, 137, 221, 157),
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        // child: const Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     // Image.network("assets/pcmc.png"),
        //     SizedBox(height: 50),
        //     Text(
        //       '''Pimpri Chinchwad Municipal Corporation
        //       Online Water Bill Payment''',
        //       style: TextStyle(
        //           fontSize: 20,
        //           color: Colors.black87,
        //           fontWeight: FontWeight.w800),
        //     )
        //   ],
        // ),
      ),
    );
  }
}
