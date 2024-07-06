import 'package:flutter/material.dart';
import 'package:login_pages/util/Emoji.dart';

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
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Emoji(
                child: emoji[index],
              );
            },
            itemCount: emoji.length,
          ),
        ),
      ),
    );
  }
}
