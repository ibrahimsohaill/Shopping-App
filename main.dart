import 'package:flutter/material.dart';
import './mainPage.dart';
import 'Items.dart';

void main() {
  Main();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        title: 'Shopping',
        theme: ThemeData(
            appBarTheme: const AppBarTheme(color: Colors.blue),
            primaryColor: const Color.fromARGB(255, 58, 133, 233)),
        home: const MyHomePage(title: 'Hi There,')));
  }
}
