import 'package:flutter/material.dart';

class EmojiModel {
  String emoji;
  String name;
  Color boxcolor;

  EmojiModel({required this.emoji, required this.boxcolor, required this.name});

  static List<EmojiModel> getCatogry() {
    List<EmojiModel> emojis = [];

    emojis.add(
      EmojiModel(emoji: '👋', boxcolor: Color(0xacfa70), name: 'Hi'),
    );
    emojis.add(
      EmojiModel(emoji: '😊', boxcolor: Color(0xacfa70), name: 'Happy'),
    );
    emojis.add(
      EmojiModel(emoji: '😂', boxcolor: Color(0xacfa70), name: 'Funny'),
    );
    emojis.add(
      EmojiModel(emoji: '🤣', boxcolor: Color(0xacfa70), name: 'LOL'),
    );
    emojis.add(
      EmojiModel(emoji: '❤️', boxcolor: Color(0xacfa70), name: 'Like'),
    );
    emojis.add(
      EmojiModel(emoji: '😍', boxcolor: Color(0xacfa70), name: 'Love'),
    );

    return emojis;
  }
}
