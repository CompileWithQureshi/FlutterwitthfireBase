import 'package:flutter/material.dart';
import 'package:login_pages/util/Text_Color.dart';

class Maincolumn extends StatelessWidget {
  const Maincolumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Column',
          style: textStyle,
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: Center(
            child: Text(
              '1',
              style: textStyle,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: Center(
            child: Text(
              '2',
              style: textStyle,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: Center(
            child: Text(
              '3',
              style: textStyle,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: Center(
            child: Text(
              '4',
              style: textStyle,
            ),
          ),
        ),
      ],
    );
  }
}
