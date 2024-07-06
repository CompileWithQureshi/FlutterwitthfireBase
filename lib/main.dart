// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_pages/loginPage.dart';
import 'package:login_pages/LoginSucess.dart';
import 'package:login_pages/util/Text_Color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Loginsucess(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'first Project',
            style: GoogleFonts.acme(
              color: TextColor,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 500,
          decoration: BoxDecoration(
            // color: Colors.pink,
            border: Border.all(
              color: BrColor,
              width: 3,
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.elliptical(10, 10)),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text_field(
                  text: 'Welcome',
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: heading),
                ),
                UserInput(
                  name: 'Username',
                  hint: 'Enter Name',
                ),
                UserInput(
                  name: 'Password',
                  hint: 'Enter Password',
                ),
                InkWell(
                  onTap: () {
                    print('forgot pressed');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text_field(
                      text: 'Forgot Password',
                      textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: heading,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Loginsucess(),
                        ));
                  },
                  child: Text(
                    'Click here',
                    style: TextStyle(
                      color: heading,
                    ),
                  ),
                ),
                Text_field(
                  text: 'or',
                  textStyle: textStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.gps_off),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.home_outlined),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Text_field extends StatelessWidget {
  const Text_field({super.key, required this.text, this.textStyle});

  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
    );
  }
}
