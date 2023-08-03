import 'package:flutter/cupertino.dart';

class ScreenCalls extends StatelessWidget {
  const ScreenCalls({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Calls Screen", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30
        ),),
      ),
    );
  }
}
