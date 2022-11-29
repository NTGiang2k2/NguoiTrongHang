import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('images'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(width: 2)),
              child: Center(
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Center(
                    child: Column(
                      children: [
                        //RANK 1
                        Padding(padding: EdgeInsets.all(10)),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 500,
                          height: 200,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                width: 1.0,
                                style: BorderStyle.solid),
                          ),
                          child: Column(
                            children: [
                              Container(
                                child: const Text('RANK 1'),
                                alignment: Alignment.topLeft,
                              ),
                              Container(
                                child: const Text('PLAYER 1'),
                              ),
                              Container(
                                child: const Text('POINT: 100000000000000'),
                              )
                            ],
                          ),
                        ),
                        //RANK 2
                        Padding(padding: EdgeInsets.all(10)),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 500,
                          height: 200,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                width: 1.0,
                                style: BorderStyle.solid),
                          ),
                          child: Column(
                            children: [
                              Container(
                                child: const Text('RANK 2'),
                                alignment: Alignment.topLeft,
                              ),
                              Container(
                                child: const Text('PLAYER 2'),
                              ),
                              Container(
                                child: const Text('POINT: 90000000000000'),
                              ),
                            ],
                          ),
                        ),
                        //RANK 3
                        Padding(padding: EdgeInsets.all(10)),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 500,
                          height: 200,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                width: 1.0,
                                style: BorderStyle.solid),
                          ),
                          child: Column(
                            children: [
                              Container(
                                child: const Text('RANK 2'),
                                alignment: Alignment.topLeft,
                              ),
                              Container(
                                child: const Text('PLAYER 2'),
                              ),
                              Container(
                                child: const Text('POINT: 90000000000000'),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.all(10),
                          child: ElevatedButton(
                            onPressed: (() {}),
                            child: const Text('Quay lại'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
