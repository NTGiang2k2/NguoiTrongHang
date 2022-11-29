import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(primarySwatch: Colors.grey),
    home: const MyHomePage(title: ''),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: ''),
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
    Widget login = Text(
      'Đăng kí',
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 50, color: Colors.white),
    );

    Widget TaiKhoan(String title) => TextField(
        style: TextStyle(color: Colors.cyan),
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.white)),
            border: OutlineInputBorder(),
            hintText: title,
            hintStyle: TextStyle(color: Colors.white)));

    Widget MatKhau(String title) => TextField(
        style: TextStyle(color: Colors.cyan),
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.white)),
            border: OutlineInputBorder(),
            hintText: title,
            hintStyle: TextStyle(color: Colors.white)));

    Widget Email(String title) => TextField(
        style: TextStyle(color: Colors.cyan),
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.white)),
            border: OutlineInputBorder(),
            hintText: title,
            hintStyle: TextStyle(color: Colors.white)));

    Widget SoDienThoai(String title) => TextField(
        style: TextStyle(color: Colors.cyan),
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.white)),
            border: OutlineInputBorder(),
            hintText: title,
            hintStyle: TextStyle(color: Colors.white)));

    Widget DiaChi(String title) => TextField(
        style: TextStyle(color: Colors.cyan),
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.white)),
            border: OutlineInputBorder(),
            hintText: title,
            hintStyle: TextStyle(color: Colors.white)));

    Widget btnXacNhan = ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(
              Color.fromARGB(255, 255, 255, 255).withOpacity(0.8)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)))),
      onPressed: () => {},
      child: const Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Text('Xác nhận'),
      ),
    );

    Widget btnQuayLai = ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(
              Color.fromARGB(255, 255, 255, 255).withOpacity(0.8)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)))),
      onPressed: () => {},
      child: const Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Text('Quay Lại'),
      ),
    );

    Widget Context = Container(
      width: MediaQuery.of(context).size.width / 1.1,
      height: 800,
      padding: EdgeInsets.all(50),
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Column(children: [
        login,
        Padding(padding: EdgeInsets.only(bottom: 75)),
        TaiKhoan('tên đăng nhập'),
        Padding(padding: EdgeInsets.only(bottom: 30)),
        MatKhau('mật khẩu'),
        Padding(padding: EdgeInsets.only(bottom: 30)),
        Email('email'),
        Padding(padding: EdgeInsets.only(bottom: 30)),
        SoDienThoai('số điện thoại'),
        Padding(padding: EdgeInsets.only(bottom: 30)),
        DiaChi('địa chỉ'),
        Padding(padding: EdgeInsets.only(bottom: 40)),
        btnXacNhan,
        Padding(padding: EdgeInsets.only(bottom: 20)),
        Expanded(child: Column()),
        btnQuayLai
      ]),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
    );

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Stack(children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ))),
          Context
        ]));
  }
}
