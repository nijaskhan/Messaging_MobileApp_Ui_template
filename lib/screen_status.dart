import 'package:flutter/cupertino.dart';

class ScreenStatus extends StatelessWidget {
  const ScreenStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Status Screen", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30
        ),),
      ),
    );
  }
}
