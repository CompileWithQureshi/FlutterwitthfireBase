import 'package:flutter/material.dart';
import 'package:login_pages/util/Text_Color.dart';

class Emoji extends StatelessWidget {
  const Emoji({
    super.key,
    required this.child,
  });

  final String child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25.0),
      child: Container(
        width: 100,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 2, color: BrColor)),
        child: Center(
          child: Text(
            child,
            style: TextStyle(
              fontSize: 50,
              backgroundColor: Colors.amber[300],
            ),
          ),
        ),
      ),
    );
  }
}
