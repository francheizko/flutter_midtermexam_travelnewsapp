import "package:flutter/material.dart";
import "package:flutter_midtermexam_travelnewsapp/screens/homescreen.dart";
import "package:flutter_midtermexam_travelnewsapp/screens/bottom_navbar.dart";
import "package:flutter_midtermexam_travelnewsapp/screens/kawasan_falls.dart";

void main() {
  runApp(
    const MidtermApp(),
  );
}

class MidtermApp extends StatefulWidget {
  const MidtermApp({Key? key}) : super(key: key);

  @override
  State<MidtermApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MidtermApp> {
  int selectedindex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFCFCFC),
        body: const HomeScreen(),
        bottomNavigationBar: BottomNavBar(
          selectedindex: selectedindex,
          onItemTapped: onItemTapped,
        ),
      ),
    );
  }
}
