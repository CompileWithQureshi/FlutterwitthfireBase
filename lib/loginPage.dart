// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UserInput extends StatelessWidget {
  final String? name;
  final String hint;
  const UserInput({super.key, required this.hint, this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$name'),
          SizedBox(
            height: 5,
          ),
          TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                borderSide: BorderSide(
                  color: const Color.fromARGB(255, 211, 140, 163),
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 179, 168, 167),
                  width: 1,
                ),
              ),
              hintText: hint,
            ),
          ),
        ],
      ),
    );
  }
}
