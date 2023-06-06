import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {

  @override
  void initState() {
    log("Welcome");
    // TODO: implement initState
    super.initState();
  }


  int count = 0;

  void plus() {
    if (count < 10) {
      count++;
      setState(() {});
    }
  }

  void minus() {
    if (count > 0) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("call build");
    }
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.white,
      ),
      appBar: AppBar(
        title: const Text(
          "Task",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.deepOrangeAccent,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: plus, child: const Text("Plus")),
                  Text(
                    '$count',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(onPressed: minus, child: const Text("Minus")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
