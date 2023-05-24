import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build\\
    return Scaffold(
        appBar: AppBar(
          title: const Text('Intro to Flutter'),
        ),
        body: Center(
          child: Column(
            children: [
              const Text(
                'Welcome',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    var push1 = Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage(title: 'Welcome to Home page',)));
                  },
                  child: const Text('Next'))
            ],
          ),
        ));
  }
}
