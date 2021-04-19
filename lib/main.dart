import 'package:flutter/material.dart';
import 'package:ladachipos/dashboard.dart';
import 'package:ladachipos/dashboard.dart';
import 'package:ladachipos/homepage.dart';
import 'package:ladachipos/neworder.dart';
import 'package:ladachipos/neworderdetails.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/dashboard': (context) => Dashboard(),
        '/neworder': (context) => newOrder(),
        '/orderdetails': (context) => neworderpage2(),
      },
    );
  }
}
