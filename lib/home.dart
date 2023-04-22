import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Timer timer;
  String dateTime = "";

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now().toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text("Running process application"),
      ),
      body: Center(child: Text(dateTime)),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.timer,
        ),
        onPressed: () async {
          Process.run(
            "timedate.cpl",
            ["-t", "-l", "1000"],
            runInShell: true,
          ).then((value) {
            debugPrint("isDone");
          });
        },
      ),
    );
  }
}
