// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_pages/models/emojiScreen.dart';
import 'package:login_pages/util/griddeView.dart';
import 'package:login_pages/util/mainColumn.dart';
import 'package:login_pages/util/Text_Color.dart';
import 'package:login_pages/util/mainRow.dart';

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
    // final heightS = MediaQuery.sizeOf(context).height;
    final widthS = MediaQuery.sizeOf(context).width;

    _getCatogry();
    return Scaffold(
      appBar: AppBar(
        title: Text('Secound screens'),
      ),
      body: Container(
        // height: heightS,
        width: widthS,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Mainrow(),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Maincolumn(),
                  SizedBox(
                    width: 50,
                  ),
                  emojiColumn(),
                  SizedBox(
                    width: 20,
                  ),
                ],
              )
            ],
          ),
        ),
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
                        ),
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
