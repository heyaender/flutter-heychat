// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:chattyapp/pages/message_page.dart';
import 'package:flutter/material.dart';
import 'package:chattyapp/theme.dart';

class ChatTile extends StatelessWidget {
  final String imgUrl, name, text, time;
  final bool unread;

  const ChatTile(
      {super.key,
      required this.imgUrl,
      required this.name,
      required this.text,
      required this.time,
      required this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imgUrl,
            height: 55,
            width: 55,
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleTextStyle,
              ),
              Text(
                text,
                style: unread
                    ? subtitleTextStyle.copyWith(color: blackColor)
                    : subtitleTextStyle,
              )
            ],
          ),
          const Spacer(),
          Text(
            time,
            style: subtitleTextStyle,
          ),
        ],
      ),
    );
  }
}
