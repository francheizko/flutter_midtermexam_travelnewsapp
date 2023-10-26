import "package:flutter/material.dart";
import "package:flutter_midtermexam_travelnewsapp/screens/homescreen.dart";

void main() {
  runApp(
    const MidtermApp(),
  );
}

class MidtermApp extends StatefulWidget {
  const MidtermApp({super.key});

  @override
  State<MidtermApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MidtermApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFCFCFC),
        body: HomeScreen(),
      ),
    );
  }
}
