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
      appBar: AppBar(
        title: const Text(
          "Tamato",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
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
        backgroundColor: Colors.red,
      ),
    );
  }
}
