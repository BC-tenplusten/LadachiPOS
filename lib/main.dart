import 'package:flutter/material.dart';
import 'package:ladachipos/dashboard.dart';
import 'package:ladachipos/homepage.dart';
import 'package:ladachipos/neworder.dart';
import 'package:ladachipos/neworderdetails.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text("Firebase Snapshot Error LOLOLOLOL",
              textDirection: TextDirection.ltr);
        }

        if (snapshot.connectionState == ConnectionState.done) {
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

        return Text(
            "Firebase is initializing, if this text is ugly make a screen LOLOLOLOLOL",
            textDirection: TextDirection.ltr);
      },
    );
  }
}
