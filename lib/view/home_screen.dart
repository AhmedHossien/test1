import 'package:flutter/material.dart';
import 'package:test1/manager/color_manager.dart';
import 'package:test1/manager/style_manager.dart';
import 'package:test1/manager/txt_manager.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  late List<Widget> screens = [homeScreen(), profileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            color: ColorManager.primaryColor,
            padding: const EdgeInsets.all(16),
            child: screens[currentIndex]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (val) {
          currentIndex = val;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: currentIndex,
      ),
    );
  }

  Widget homeScreen() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.waving_hand_rounded,
                color: Colors.white,
              ),
              const SizedBox(width: 20),
              Text(
                'Welcome back,',
                style: StyleManager.style(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            'Flutter Developer',
            style: StyleManager.style(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget profileScreen() {
    return Column(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey),
              child: const ClipOval(
                child: Center(
                  child: Icon(
                    Icons.person,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Text(
                  'Flutter Developer',
                  style: StyleManager.style(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        Expanded(
          child: Text(
            TextManager.info,
            style: StyleManager.style(color: Colors.white),
          ),
        )
      ],
    );
  }
}
