import 'package:flutter/material.dart';
import 'package:login_pages/util/Text_Color.dart';
import 'package:login_pages/util/griddeView.dart';

class Mainrow extends StatelessWidget {
  const Mainrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          'Row',
          style: textStyle,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
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
          margin: EdgeInsets.symmetric(horizontal: 10),
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
          margin: EdgeInsets.symmetric(horizontal: 10),
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
          margin: EdgeInsets.symmetric(horizontal: 10),
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
        IconButton.outlined(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Grideview(),
                ),
              );
            },
            icon: Icon(
              Icons.queue_play_next_outlined,
              color: BrColor,
            ))
      ],
    );
  }
}
