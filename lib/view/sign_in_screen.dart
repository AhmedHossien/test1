import 'package:flutter/material.dart';
import 'package:test1/manager/color_manager.dart';
import 'package:test1/manager/decoration_manager.dart';
import 'package:test1/manager/style_manager.dart';
import 'package:test1/view/home_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        color: ColorManager.primaryColor,
        child: Form(
          key: globalKey,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            scrollDirection: Axis.vertical,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Sign In',
                style: StyleManager.style(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (val) {
                    if (val == null || val.isEmpty) return 'Empty Field';
                    return null;
                  },
                  onChanged: (val) {},
                  decoration: DecorationManager.buildInputDecoration(
                      hint: 'Email', fillColor: Colors.white)),
              const SizedBox(height: 20),
              TextFormField(
                  keyboardType: TextInputType.text,
                  onChanged: (val) {},
                  validator: (val) {
                    if (val == null || val.isEmpty) return 'Empty Field';
                    return null;
                  },
                  obscureText: true,
                  decoration: DecorationManager.buildInputDecoration(
                      hint: 'Password', fillColor: Colors.white)),
              const SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  if (globalKey.currentState!.validate()) {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (c) => const MyHomePage()));
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Welcome, Flutter Developer')));
                  }
                },
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    'Sign In',
                    style: StyleManager.style(color: Colors.white),
                  )),
                ),
              )
            ]),
          ),
        ),
      )),
    );
  }
}
