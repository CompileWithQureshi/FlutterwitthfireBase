import 'package:flutter/material.dart';
import 'package:login_pages/util/Text_Color.dart';
// part 'package:login_pages/login_pages/main.dart';

class UserInput extends StatelessWidget {
  final String? name;
  final String hint;

  const UserInput({
    super.key,
    required this.hint,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$name',
            style: textStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          TextField(
            keyboardType: TextInputType.number,
            autofocus: true,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                borderSide: BorderSide(
                  color: BrColor,
                  width: 1,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 179, 168, 167),
                  width: 1,
                ),
              ),
              hintText: hint,
              hintStyle: inputStyle,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
