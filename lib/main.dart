import 'package:firebase_core/firebase_core.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyD-JGNErIGd0C2JF75i5xfmjyvS4lckAXM",
          authDomain: "tributepage-46d73.firebaseapp.com",
          projectId: "tributepage-46d73",
          storageBucket: "tributepage-46d73.appspot.com",
          messagingSenderId: "543790200731",
          appId: "1:543790200731:web:f75683494702c50e40933e"));
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}
