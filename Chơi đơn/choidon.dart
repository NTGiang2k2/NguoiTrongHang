import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Đăng nhập ',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Chơi đơn'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/backGround1.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Image(
              image: AssetImage('images/cauhoixam.jpg'),
            ),
          ),
          Padding(padding: EdgeInsets.all(10),),
          ElevatedButton(
            onPressed: () {},
            child: Text('Câu A'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20.0),
              fixedSize: Size(300, 80),
              textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(padding: EdgeInsets.all(10),),
          ElevatedButton(
            onPressed: () {},
            child: Text('Câu B'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20.0),
              fixedSize: Size(300, 80),
              textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(padding: EdgeInsets.all(10),),
          ElevatedButton(
            onPressed: () {},
            child: Text('Câu C'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20.0),
              fixedSize: Size(300, 80),
              textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(padding: EdgeInsets.all(10),),
          ElevatedButton(
            onPressed: () {},
            child: Text('Câu D'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20.0),
              fixedSize: Size(300, 80),
              textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(padding: EdgeInsets.all(10),),
          ElevatedButton(onPressed: () {}, child: Text('Trợ giúp'),style: ElevatedButton.styleFrom(),),
          Padding(padding: EdgeInsets.all(10),),
          ElevatedButton(onPressed: () {}, child: Text('Quay lại'),style: ElevatedButton.styleFrom(),),
        ],
      ),
    );
  }
}
