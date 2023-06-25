import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app_demo/view/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Task App Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: "Poppins",
        // useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
