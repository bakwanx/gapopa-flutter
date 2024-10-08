import 'package:flutter/material.dart';
import 'package:gapopa/presentation/home/home_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'di/dependency_injection.dart';


void main() async {
  await initDependency();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
