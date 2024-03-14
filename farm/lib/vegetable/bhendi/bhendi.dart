import 'package:flutter/material.dart';

class Ladyfinger extends StatefulWidget {
  const Ladyfinger({super.key});
  @override
  State createState() => _Ladyfinger();
}

class _Ladyfinger extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ladyfinger",
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
        backgroundColor: Colors.green,
      ),
    );
  }
}
