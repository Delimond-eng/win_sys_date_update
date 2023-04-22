import 'package:flutter/material.dart';
import 'package:running_process/Home.dart';

void main() {
  runApp(const RunningProcessApp());
}

class RunningProcessApp extends StatelessWidget {
  const RunningProcessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Running process app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
