import 'package:flutter/material.dart';
import 'package:ladachipos/dashboard.dart';
import 'package:ladachipos/dashboard.dart';
import 'package:ladachipos/homepage.dart';
import 'package:ladachipos/neworder.dart';
import 'package:ladachipos/neworderdetails.dart';
// Import the firebase_core plugin
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
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Text("Firebase Snapshot Error LOLOLOLOL",
              textDirection: TextDirection.ltr);
        }

        // Once complete, show your application
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

        // Otherwise, show something whilst waiting for initialization to complete
        return Text(
            "Firebase is initializing, if this text is ugly make a screen LOLOLOLOLOL",
            textDirection: TextDirection.ltr);
      },
    );
  }
}

// MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.grey,
//       ),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => HomePage(),
//         '/dashboard': (context) => Dashboard(),
//         '/neworder': (context) => newOrder(),
//         '/orderdetails': (context) => neworderpage2(),
//       },
//     );
