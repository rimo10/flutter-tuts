import 'package:flutter/material.dart';
import 'package:my_app/IntroPage.dart';

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
          primarySwatch: Colors.orange,
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            subtitle1: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          )),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home:  const IntroPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  var emailText = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    var arrNames = [
      'Microsoft',
      'Zomato',
      'Swiggy',
      'AirBnb',
      'Google',
      'Apple',
      'Amazon',
      'Flipkart',
      'Cars24'
    ];
    var arrcolors = [
      Colors.deepOrange,
      Colors.yellow,
      Colors.deepPurpleAccent,
      Colors.pink,
      Colors.lightBlue,
      Colors.tealAccent,
      Colors.black,
      Colors.brown
    ];
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Contacts'),
      ),
      // body:Center(
      //     child: Container(
      //       width: 200,
      //       height: 100,
      //       color: Colors.deepOrangeAccent,
      //       child: Center(child: Text('This is the center div',style: TextStyle(color: Colors.black),)),
      //
      //     )
      // body: const Text('Hello Flutter World',style: TextStyle(
      //   fontSize: 25,
      //   color: Colors.lightBlue,
      //   fontWeight: FontWeight.bold,
      //   backgroundColor: Colors.amberAccent,),
      // body: TextButton(
      //   child: Text('Click Here!!'),
      //   onPressed: () => {
      //     print('Text button pressed')
      //   },)
      // body: ElevatedButton(
      //   child: const Text('Elevated Button. Tap Here'),
      //   onPressed: () => {print('Button Long pressed')},
      // ),
      // body: Center(
      //   child: Container(
      //       width: 500,
      //       height:400,
      //       child : Image.asset('assets/images/output.png')
      //   )
      // )
      // body: Column(
      //   children: const [
      //     Text('A',style: TextStyle(fontSize: 25),),
      //     Text('B',style: TextStyle(fontSize: 25),),
      //     Text('C',style: TextStyle(fontSize: 25),),
      //     Text('D',style: TextStyle(fontSize: 25),),
      //     Text('E',style: TextStyle(fontSize: 25),),
      //   ],)
      // body:  SizedBox(
      //   width: 600,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children:[
      //       Text('A',style: TextStyle(fontSize: 25),),
      //       Text('B',style: TextStyle(fontSize: 25),),
      //       Text('C',style: TextStyle(fontSize: 25),),
      //       Text('D',style: TextStyle(fontSize: 25),),
      //       Text('E',style: TextStyle(fontSize: 25),),
      //       ElevatedButton(
      //         child: const Text('Elevated Button. Tap Here'),
      //           onPressed: () => {
      //           print('Button Long pressed')},
      //         ),
      //     ],
      //   ),
      // )
      // body: Center(
      //   child: InkWell(
      //     // onTap: ()=>{
      //     //   print('Container Pressed')
      //     // },
      //       child: Container(
      //         width: 200,
      //         height: 200,
      //         color: Colors.amber,
      //         child: Center(child: InkWell(
      //             onTap: ()=>{
      //               print('Container Pressed')
      //             },
      //             child: Text('Click Here!',style: TextStyle(fontSize: 20),))),
      //       )
      //   ),
      // )
      // body: Padding(
      //   padding: const EdgeInsets.all(10),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         SingleChildScrollView(
      //           scrollDirection: Axis.horizontal,
      //           child: Padding(
      //             padding:const EdgeInsets.all(10),
      //             child: Row(
      //               children: [
      //                 Container(
      //                   margin: const EdgeInsets.only(right: 10),
      //                   width: 200,
      //                   height: 200,
      //                   color: Colors.blue,
      //                 ),
      //                 Container(
      //                   margin: const EdgeInsets.only(right: 10),
      //                   width: 200,
      //                   height: 200,
      //                   color: Colors.pink,
      //                 ),
      //                 Container(
      //                   margin: const EdgeInsets.only(right: 10),
      //                   width: 200,
      //                   height: 200,
      //                   color: Colors.deepPurpleAccent,
      //                 ),
      //                 Container(
      //                   margin: const EdgeInsets.only(right: 10),
      //                   width: 200,
      //                   height: 200,
      //                   color: Colors.white70,
      //                 ),
      //               ]
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: const EdgeInsets.only(bottom: 10),
      //           // width: 200,
      //           height: 200,
      //           color: Colors.amberAccent,
      //         ),
      //         Container(
      //           margin: const EdgeInsets.only(bottom: 10),
      //           // width: 200,
      //           height: 200,
      //           color: Colors.deepOrange,
      //         ),
      //         Container(
      //           margin: const EdgeInsets.only(bottom: 10),
      //           // width: 200,
      //           height: 200,
      //           color: Colors.greenAccent,
      //         ),
      //         Container(
      //           margin: const EdgeInsets.only(bottom: 10),
      //           // width: 200,
      //           height: 200,
      //           color: Colors.pinkAccent,
      //         ),
      //         Container(
      //           margin: const EdgeInsets.only(bottom: 10),
      //           // width: 200,
      //           height: 200,
      //           color: Colors.white12,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      //   body: ListView.separated(itemBuilder: (context,index){
      //     return Text(arrNames[index],style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),);
      //   },
      //     itemCount: arrNames.length,
      //     // itemExtent: 50,
      //     separatorBuilder: (context,index){
      //       return Divider(height: 200,thickness: 3);
      //     },
      // )
      // body: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   color: Colors.lightBlue.shade50,
      //   child: Center(
      //     child: Container(
      //         width: 200,
      //         height: 200,
      //         decoration: const BoxDecoration(
      //             color: Colors.pinkAccent,
      //             borderRadius: BorderRadius.all(
      //                 Radius.circular(20)
      //             )
      //         )
      //     ),
      //   ),
      // ),
      // body: Row(
      //   // mainAxisAlignment: MainAxisAlignment.center,
      //     children:[
      //       Container(
      //         width: 50,
      //         height: 200,
      //         color: Colors.pink,
      //       ),
      //       Expanded(
      //         flex: 2,
      //         child: Container(
      //           width: 50,
      //           height: 200,
      //           color: Colors.yellow,
      //         ),
      //       ),
      //       Container(
      //         width: 50,
      //         height: 200,
      //         color: Colors.deepPurpleAccent,
      //       ),
      //       Expanded(
      //         flex: 3,
      //         child: Container(
      //           width: 50,
      //           height: 200,
      //           color: Colors.greenAccent,
      //         ),
      //       )
      //     ],
      // )
      // body: ListView.separated(itemBuilder: (context, index) {
      //   return Padding(
      //     padding: const EdgeInsets.all(3),
      //     child: Card(
      //       shadowColor: Colors.lightBlueAccent,
      //       elevation: 10,
      //       child: ListTile(
      //         // leading: Text('${index+1}'),
      //         leading: Container(
      //           width: 70,
      //           height: 100,
      //           child: const CircleAvatar(
      //             backgroundImage: AssetImage('assets/images/avatar.png'),
      //             backgroundColor: Colors.green,
      //             radius: 50,
      //           ),
      //         ),
      //         title: Text(arrNames[index],style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.amber)),
      //         subtitle: Text('Number', style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.black)),
      //         trailing: const Icon(Icons.add),
      //       ),
      //     ),
      //   );
      // },
      //   itemCount: arrNames.length,
      //   separatorBuilder: (context, index) {
      //     return const Divider(height: 40, thickness: 1,);
      //   },
      // )
      // body: Center(
      //   child: SizedBox(
      //       width: 300,
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           TextField(
      //             controller: emailText,
      //             decoration: InputDecoration(
      //               focusedBorder: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(20),
      //                   borderSide: const BorderSide(
      //                     color: Colors.blue,
      //                     width: 3,
      //                   )),
      //               enabledBorder: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(20),
      //                   borderSide: const BorderSide(
      //                     color: Colors.black,
      //                     width: 2,
      //                   )),
      //               // prefixText: 'Your email',
      //               hintText: 'Your Email',
      //               suffixIcon: IconButton(
      //                 icon: const Icon(
      //                   Icons.email,
      //                   color: Colors.deepPurpleAccent,
      //                 ),
      //                 onPressed: () {},
      //               ),
      //             ),
      //           ),
      //           Container(
      //             height: 20,
      //           ),
      //           TextField(
      //               controller: password,
      //               obscureText: true,
      //               decoration: InputDecoration(
      //                 focusedBorder: OutlineInputBorder(
      //                     borderRadius: BorderRadius.circular(20),
      //                     borderSide: const BorderSide(
      //                       color: Colors.pink,
      //                       width: 3,
      //                     )),
      //                 border: OutlineInputBorder(
      //                     borderRadius: BorderRadius.circular(20),
      //                     borderSide: const BorderSide(
      //                       color: Colors.black,
      //                       width: 2,
      //                     )),
      //                 // prefixText: 'Your password',
      //                 hintText: 'password',
      //                 suffixIcon: IconButton(
      //                   icon: const Icon(Icons.remove_red_eye,
      //                       color: Colors.deepOrange),
      //                   onPressed: () {},
      //                 ),
      //               )),
      //           ElevatedButton(
      //               onPressed: () {
      //                 String email = emailText.text.toString();
      //                 String pass = password.text;
      //                 print("Email: $email, Password: $pass");
      //               },
      //               child: const Text('login'))
      //         ],
      //       )),
      // ),
      //   body: Container(
      //     width: 800,
      //     child: GridView.count(crossAxisCount: 2,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(color: arrcolors[0]),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(color: arrcolors[1]),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(color: arrcolors[2]),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(color: arrcolors[3]),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(color: arrcolors[4]),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(color: arrcolors[5]),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(color: arrcolors[6]),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(color: arrcolors[7]),
      //       ),
      //     ],),
      //   )
      // );
      body: Container(
        child: Column(
          children: [
            CatItems(),
            Contact(),
            subCatItems(),
            BottomMenu(),
            Expanded(
              child: Container(
                height: 200,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
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
                    // backgroundColor: Colors.white70,
                  ),
                  title: Text('Name'),
                  subtitle: Text('Phone No'),
                  trailing: Icon(Icons.delete),
                )),
      ),
    );
  }
}

class subCatItems extends StatelessWidget {
  const subCatItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.orange,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.0),
                color: Colors.deepPurpleAccent,
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
