import 'package:flutter/material.dart';
import 'package:test1/manager/color_manager.dart';
import 'package:test1/view/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'test1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorManager.primaryColor),
        useMaterial3: true,
      ),
      home: const SignInScreen(),
    );
  }
}
