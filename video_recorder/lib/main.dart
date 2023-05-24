import 'package:flutter/material.dart';
import 'package:video_recorder/SplashScreen.dart';

import 'MyProfileScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: const IntroPage(),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Classico'),
      ),
      body: Column(
        children: [
          const CatItems(),
          const Contact(),
          // const subCatItems(),
          const BottomMenu(),
          Expanded(
            child: Container(
              height: 200,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}

class CatItems extends StatelessWidget {
  const CatItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 200,
        color: Colors.blue,
        child: ListView.builder(
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.green,
              ),
            ),
          ),
          itemCount: 20,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        height: 200,
        color: Colors.pinkAccent,
        child: ListView.builder(
            itemBuilder: (context, index) => const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/image/avatar.png'),
                    backgroundColor: Colors.white70,
                  ),
                  title: Text('Name'),
                  subtitle: Text('Phone No'),
                  trailing: Icon(Icons.delete),
                )),
      ),
    );
  }
}

// class subCatItems extends StatelessWidget {
//   const subCatItems({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: 2,
//       child: Container(
//         color: Colors.orange,
//         child: ListView.builder(
//           itemBuilder: (context, index) => Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Container(
//               width: 200,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(11.0),
//                 color: Colors.deepPurpleAccent,
//               ),
//             ),
//           ),
//           itemCount: 20,
//           scrollDirection: Axis.horizontal,
//         ),
//       ),
//     );
//   }
// }

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        height: 200,
        color: Colors.green,
      ),
    );
  }
}

class DashBoard extends StatelessWidget {
  var nameController = TextEditingController();

  DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
        ),
        body: Center(
          child: SizedBox(
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Dashboard Screen',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                TextField(
                  controller: nameController,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyProfileScreen(nameController.text.toString())));
                    },
                    child: const Text('LogIn'))
              ],
            ),
          ),
        ));
  }
}
