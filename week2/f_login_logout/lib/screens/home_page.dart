import 'package:flutter/material.dart';
import 'package:floginlogout/clicky_button/clicky_button.dart';
import 'package:flutter/material.dart';
import 'package:floginlogout/constants.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  static const routeName="/homePage";
  final List<MaterialColor> colors = const [
    Colors.green,
    Colors.purple,
    Colors.yellow,
    Colors.blue,
    Colors.red,
    Colors.pink,
    Colors.amber,
  ];

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    Fluttertoast.showToast(
        msg: "Anda Berhasil Login Kawan",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.pinkAccent,
        textColor: Colors.white,
        fontSize: 16.0
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Klik Button',
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 40.0,
            ),
            ClickyButton(
              child: Text(
                'Logout!',
                style: TextStyle(
                    color: _counter % widget.colors.length == 2
                        ? Colors.black
                        : Colors.white,
                    fontSize: 22),
              ),
              color: widget.colors[_counter % widget.colors.length],
              onPressed: () {
                Navigator.pushNamed(context, "/");
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Kamu Klik Untuk Logout',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

