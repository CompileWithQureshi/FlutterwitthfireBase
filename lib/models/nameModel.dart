import 'package:flutter/material.dart';

class Namemodel {
  String name;
  Color bgColor;
  TextStyle gridStyle;

  Namemodel(
      {required this.name, required this.bgColor, required this.gridStyle});

  static List<Namemodel> getNames() {
    List<Namemodel> names = [];

    names.add(
      Namemodel(
        name: 'Sajid',
        bgColor: Color(0xB2ACFA70),
        gridStyle: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
    names.add(
      Namemodel(
        name: 'Qureshi',
        bgColor: Color.fromARGB(125, 208, 211, 56),
        gridStyle: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
    names.add(
      Namemodel(
        name: 'Zuhaib',
        bgColor: Color.fromARGB(177, 196, 57, 103),
        gridStyle: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
    names.add(
      Namemodel(
        name: 'Mohammed',
        bgColor: Color.fromARGB(177, 77, 69, 182),
        gridStyle: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
    names.add(
      Namemodel(
        name: 'Laiba',
        bgColor: Color.fromARGB(177, 80, 187, 190),
        gridStyle: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
    names.add(
      Namemodel(
        name: 'Hudan',
        bgColor: Color.fromARGB(179, 190, 219, 83),
        gridStyle: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
      ),
    );

    return names;
  }
}
