import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [ Color.fromARGB(255, 202, 45, 255),Color(0xFF8000ff) ])),
                child: Text("Fepo", style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w700, color: const Color.fromARGB(255, 255, 255, 255)),),
      ),
    );
  }
}
