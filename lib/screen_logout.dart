import 'package:flutter/material.dart';

class ScreenLogout extends StatelessWidget {
  const ScreenLogout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Logout Widget"),
      ),
    );
  }
}
