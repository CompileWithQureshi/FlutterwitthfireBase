import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Loginsucess extends StatelessWidget {
  const Loginsucess({super.key, this.age, this.name});
  final String? name;
  final int? age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Secound screen'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 500,
          decoration: BoxDecoration(
            // color: Colors.pink,
            border: Border.all(
              color: Color.fromARGB(255, 252, 83, 139),
              width: 3,
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.elliptical(10, 10)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('$name $age'),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('click'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
