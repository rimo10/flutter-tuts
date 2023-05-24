import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  var nameFromHome;
  MyProfileScreen(this.nameFromHome, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My profile'),
      ),
      body: Container(
        color: Colors.blueGrey.shade50,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome, $nameFromHome",
                  style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Back'))
            ],
          ),
        ),
      ),
    );
  }
}
