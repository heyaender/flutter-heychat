// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:chattyapp/theme.dart';

class ChatBubbleLeft extends StatelessWidget {
  final String imgUrl, text, time;

  const ChatBubbleLeft({
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
        children: [
          Image.asset(
            imgUrl,
            width: 40,
            height: 40,
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFEAEFF3),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
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
        ],
      ),
    );
  }
}
