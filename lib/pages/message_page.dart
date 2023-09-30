// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:heychat/theme.dart';
import 'package:heychat/widgets/chat_bubble_left.dart';
import 'package:heychat/widgets/chat_bubble_right.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget chatInput() {
      return Container(
        width: MediaQuery.of(context).size.width - (2 * 15),
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(75),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Type somthing...',
              style: subtitleTextStyle,
            ),
            Icon(Icons.send)
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xFFF8FAFC),
      floatingActionButton: chatInput(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                ),
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/group1.png',
                        height: 55,
                        width: 55,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jakarta Fair',
                            style: titleTextStyle,
                          ),
                          Text(
                            '14,209 members',
                            style: subtitleTextStyle,
                          ),
                        ],
                      ),
                      Spacer(),
                      SizedBox(
                        height: 35,
                        width: 35,
                        child: Material(
                          color: Color(0xFF29CB9E),
                          borderRadius: BorderRadius.circular(25),
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(25),
                            child: Padding(
                              padding: EdgeInsets.all(0),
                              child: Icon(
                                Icons.call,
                                color: whiteColor,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ChatBubbleLeft(
                text: 'How are you guys?',
                time: '02.30',
                imgUrl: 'assets/images/friend1.png',
              ),
              ChatBubbleLeft(
                text: 'Fine here',
                time: '03.11',
                imgUrl: 'assets/images/friend2.png',
              ),
              ChatBubbleRight(
                text: 'Yes am fine too,\nThinking about the project...',
                time: '22.08',
                imgUrl: 'assets/images/you.png',
              ),
              ChatBubbleLeft(
                text: 'The client has been very...',
                time: '22.10',
                imgUrl: 'assets/images/friend1.png',
              )
            ],
          ),
        ),
      ),
    );
  }
}
