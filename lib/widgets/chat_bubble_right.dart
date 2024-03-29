// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:heychat/theme.dart';

class ChatBubbleRight extends StatelessWidget {
  final String imgUrl, text, time;

  const ChatBubbleRight({
    super.key,
    required this.text,
    required this.time,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 30,
        left: 30,
        right: 30,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 16,
                      color: blackColor,
                    ),
                  ),
                  Text(
                    time,
                    style: subtitleTextStyle.copyWith(
                      color: blackColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Image.asset(
            imgUrl,
            width: 40,
            height: 40,
          ),
        ],
      ),
    );
  }
}
