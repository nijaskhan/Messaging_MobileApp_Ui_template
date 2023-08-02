import 'package:flutter/material.dart';
import 'package:list_app/screen_home.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    goToHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Image.network('https://logolook.net/wp-content/uploads/'
              '2021/06/Whatsapp-Logo.png', height: 100),
        ),
      ),
    );
  }

  Future<void> goToHome() async{
    await Future.delayed(Duration(seconds: 4));
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> ScreenHome()));
  }
}