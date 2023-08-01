import 'package:flutter/material.dart';

class ScreenPerson extends StatelessWidget {
  final String name;
  const ScreenPerson({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            child: Text("go Back"),
          ),
        ),
      ),
    );
  }
}
