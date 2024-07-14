// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_pages/models/emojiScreen.dart';
import 'package:login_pages/util/mainColumn.dart';
import 'package:login_pages/util/Text_Color.dart';

class Loginsucess extends StatefulWidget {
  Loginsucess({super.key});

  @override
  State<Loginsucess> createState() => _LoginsucessState();
}

class _LoginsucessState extends State<Loginsucess> {
  List<EmojiModel> emojis = [];

  void _getCatogry() {
    emojis = EmojiModel.getCatogry();
  }

  @override
  void initState() {
    _getCatogry();
  }

  @override
  Widget build(BuildContext context) {
    _getCatogry();
    return Scaffold(
      appBar: AppBar(
        title: Text('Secound screens'),
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
              emojiColumn()
            ],
          )
        ],
      ),
    );
  }

  Column emojiColumn() {
    return Column(
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
            itemCount: emojis.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  print(emojis[index].emoji);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  width: 50,
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      color: emojis[index].boxcolor),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          emojis[index].emoji,
                          style: TextStyle(fontSize: 30),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          emojis[index].name,
                          style: textStyle,
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

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
