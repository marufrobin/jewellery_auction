import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDACBA4),
      body: Column(
        children: [
          Row(
            children: [Text("Hey Robin")],
          )
        ],
      ),
    );
  }
}
