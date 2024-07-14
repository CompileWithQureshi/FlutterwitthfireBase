// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:login_pages/util/Emoji.dart';
import 'package:login_pages/util/mainColumn.dart';
import 'package:login_pages/util/Text_Color.dart';

class Loginsucess extends StatelessWidget {
  Loginsucess({super.key});
  final List emoji = [
    '👋',
    '😊',
    '😂',
    '🤣',
    '❤️',
    '😍',
    '😒',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Secound screens'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Column, Row, List View Builder ',
            style: textStyle,
          ),
          SizedBox(
            height: 50,
          ),
          MainRow(),
          SizedBox(
            height: 50,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Maincolumn(),
              SizedBox(
                width: 50,
              ),
              Column(
                children: <Widget>[
                  Text(
                    'ListView.Builder',
                    style: textStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 500,
                    width: 100,
                    child: ListView.builder(
                      itemCount: emoji.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            print(emoji[index]);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                            child: Center(
                              child: Text(
                                emoji[index],
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Container emojiContainer() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.amber,
        border: Border.all(
          color: Colors.pink,
        ),
      ),
    );
  }
}

//  Center(
//             child: SizedBox(
//               width: 300,
//               height: double.infinity,
//               child: ListView.builder(
//                 itemBuilder: (context, index) {
//                   return Emoji(
//                     child: emoji[index],
//                   );
//                 },
//                 itemCount: emoji.length,
//               ),
//             ),

Row MainRow() {
  return Row(
    children: [
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
    ],
  );
}
