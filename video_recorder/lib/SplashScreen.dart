import 'dart:async';
import 'package:flutter/material.dart';
import 'package:video_recorder/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => DashBoard()));
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: const Center(
            child: Text(
          'Flutter',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 50,
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        )),
      ),
    );
    throw UnimplementedError();
  }
}
