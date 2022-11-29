import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey,
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            offset: Offset(2, 3),
            blurRadius: 2,
            color: Colors.black.withAlpha(30),
          ),
        ],
      ),
      margin: EdgeInsets.only(left: 35, right: 35, bottom: 20),
      height: 90,
      child: Row(
        children: <Widget>[
          Container(
            width: 90,
            child: Image(
              image: AssetImage('images/trogiup1.png'),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 10),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Tro giup 50',
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 22, letterSpacing: .9),
                  ),
                  Text("50 vang"),
                ],
              ),
            ),
          ),
          Container(
            width: 90,
            child: Image(
              image: AssetImage('images/trogiup2.png'),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 10),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Tro giup cau hoi',
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 22, letterSpacing: .9),
                  ),
                  Text("100 vang"),
                ],
              ),
            ),
          ),
          Container(
            width: 90,
            child: Image(
              image: AssetImage('images/trogiup3.png'),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 10),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Tro giup hoi sinh',
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 22, letterSpacing: .9),
                  ),
                  Text("150 vang"),
                ],
              ),
            ),
          ),Container(
          alignment: Alignment.bottomRight,
          padding: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: (() {}),
            child: const Text('Quay lại'),
          ),
        ),
        ],
      ),
    );
  }
}
