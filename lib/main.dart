import 'package:flutter/material.dart';
import 'package:list_app/screen_home.dart';
import 'package:list_app/screen_logout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green.shade200
      ),
      home: ScreenHome(),
      routes: {
        'screen_1':(ctx) {
          return ScreenHome();
        },
        'screen_2':(ctx) {
          return ScreenLogout();
        }
      },
    );
  }
}
