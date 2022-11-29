import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
    Widget Header(String head) => Text(
          head,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.yellow),
        );
    Widget Text_Fild(String text) => TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.white)),
              border: OutlineInputBorder(),
              hintText: text,
              hintStyle: TextStyle(color: Colors.white)),
        );
    Widget btn = ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(
              Colors.amberAccent.withOpacity(0.8)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)))),
      onPressed: () => {}, //trong đây là chỗ để xửa lý mật khẩu
      child: const Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Text('Xác Nhận'),
      ),
    );
    Widget formQMK = Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(children: [
          Header('Đăng Nhập'),
          Padding(padding: EdgeInsets.only(bottom: 18)),
          Text_Fild('Nhập mật khẩu cũ'),
          Padding(padding: EdgeInsets.only(bottom: 18)),
          Text_Fild('Nhập mật khẩu mới'),
          Padding(padding: EdgeInsets.only(bottom: 18)),
          Text_Fild('nhập lại mật khẩu mới'),
          Padding(padding: EdgeInsets.only(bottom: 18)),
          btn,
        ]));

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/backGround1.jpg'),
                      fit: BoxFit.cover)),
            ),
            formQMK
          ],
        ));
  }
}
