import 'package:flutter/material.dart';
import 'package:login_pages/models/nameModel.dart';
import 'package:login_pages/util/Text_Color.dart';

class Grideview extends StatefulWidget {
  Grideview({super.key});

  @override
  State<Grideview> createState() => _GrideviewState();
}

class _GrideviewState extends State<Grideview> {
  List<Namemodel> names = [];

  void _getNames() {
    names = Namemodel.getNames();
  }

  @override
  void initState() {
    _getNames();
  }

  @override
  Widget build(BuildContext context) {
    final heightS = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GrideView',
          style: textStyle,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: names.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  color: names[index].bgColor,
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                  child: Text(
                names[index].name,
                style: names[index].gridStyle,
              )),
            );
          },
        ),
      ),
    );
  }
}
