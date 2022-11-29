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
      home: const MyHomePage(title: 'Đăng nhập'),
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
  TextEditingController taiKhoan = TextEditingController();
  TextEditingController matKhau = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white10,
        appBar: AppBar(
          backgroundColor: Colors.grey,
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
            Column(
              children: [
                /* Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/backGround.jpg'),
                    fit: BoxFit.cover,
                    
                  ),
                ),
              )
            ],
          ), */
                //Tieu de dang nhap.
                //Nhap tai khoan.
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: taiKhoan,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Tài khoản',
                    ),
                  ),
                ),
                //Nhap mat khau.
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: matKhau,
                    decoration: const InputDecoration(
                      /* enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)), */
                      border: OutlineInputBorder(),
                      labelText: 'Mật khẩu',
                    ),
                  ),
                ),
                //Nút đăng nhập & Đăng ký.
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Nút đăng nhập.
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 65,
                      child: ElevatedButton(
                        child: const Text('Đăng nhập'),
                        onPressed: () {},
                      ),
                    ),
                    //Nút quên khẩu.
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: const Text('Quên mật khẩu',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    )
                  ],
                ),
                //Đăng ký
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Bạn không có tài khoản ?'),
                    TextButton(
                      child: const Text(
                        'Đăng ký',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
