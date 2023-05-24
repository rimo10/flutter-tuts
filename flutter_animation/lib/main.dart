import 'package:flutter/material.dart';
import 'package:flutter_animation/detailPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget
{
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _width= 100.0;
  var _height= 200.0;
  bool flag=true;
  Color bgColor = Colors.yellow;
  var myOpacity=1.0;

  var arrIdx=[
    1,2,3,4,5,6,7,8,9,10,11,12,13,14
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MY Animation'),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       // AnimatedContainer(
      //       //   width: _width,
      //       //   height: _height,
      //       //   color: bgColor,
      //       //   duration: const Duration(milliseconds: 10),
      //       // ),
      //       AnimatedOpacity(opacity: myOpacity,duration: const Duration(seconds: 3),child: Container(
      //         width: _width,
      //         height: _height,
      //         color: bgColor,
      //       ),),
      //       ElevatedButton(onPressed: (){
      //         setState(() {
      //           if(flag){
      //             _width=100.0;
      //             _height=200.0;
      //             bgColor=Colors.pink;
      //             myOpacity=0.1;
      //             flag=false;
      //           }
      //           else{
      //             _width=200.0;
      //             _height=100.0;
      //             bgColor=Colors.yellow;
      //             myOpacity=1.0;
      //             flag=true;
      //           }
      //         });
      //       }, child: const Text('Animate'))
      //     ],
      //   ),
      // ),
      // body: Container(
      //   child: Center(
      //     child: InkWell(
      //       onTap: (){
      //         Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage()));
      //       },
      //       child: Hero(
      //         tag: 'background',
      //         child: Image.asset('assets/images/tech.jpg', width: 300, height: 200,),
      //       ),
      //     ),
      //   ),
      // ),
      body: ListWheelScrollView(
        itemExtent: 150,
        children: arrIdx.map((value) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors:[
                  Colors.yellowAccent,
                  Colors.blue,
                ]
              ),

              borderRadius: BorderRadius.circular(10),
            ),
            width: double.infinity,

          ),
        )).toList()
      ),
    );
  }
}