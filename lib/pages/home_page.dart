import 'package:chattyapp/pages/message_page.dart';
import 'package:chattyapp/theme.dart';
import 'package:chattyapp/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const MessagePage(),
            ),
          );
        },
        backgroundColor: greenColor,
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: blueColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Image.asset(
                'assets/images/pic_profile.png',
                height: 100,
                width: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 2,
              ),
              const Text(
                'Sabrina Carpenter',
                style: TextStyle(
                  fontSize: 20,
                  color: whiteColor,
                ),
              ),
              const Text(
                'Travel Freelancer',
                style: TextStyle(fontSize: 16, color: lightBlueColor),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(30),
                decoration: const BoxDecoration(
                    color: whiteColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Friends',
                      style: titleTextStyle,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const ChatTile(
                      imgUrl: 'assets/images/friend1.png',
                      name: 'Joshuer',
                      text: 'Sorry, you’re not my ty...',
                      time: 'Now',
                      unread: true,
                    ),
                    const ChatTile(
                      imgUrl: 'assets/images/friend2.png',
                      name: 'Gabriella',
                      text: 'I saw it clearly and mig...',
                      time: '12.32',
                      unread: false,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Groups',
                      style: titleTextStyle,
                    ),
                    const ChatTile(
                      imgUrl: 'assets/images/group1.png',
                      name: 'Jakarta Fair',
                      text: 'Love them',
                      time: '11.53',
                      unread: true,
                    ),
                    const ChatTile(
                      imgUrl: 'assets/images/group2.png',
                      name: 'Repoloved',
                      text: 'Here here we can go...',
                      time: '11.10',
                      unread: false,
                    ),
                    const ChatTile(
                      imgUrl: 'assets/images/group3.png',
                      name: 'Supercar Surabaya',
                      text: 'The car which does not...',
                      time: '10.02',
                      unread: true,
                    ),
                    const ChatTile(
                      imgUrl: 'assets/images/group1.png',
                      name: 'Rumah Minimalis',
                      text: 'Where your home brother...',
                      time: '07.42',
                      unread: false,
                    ),
                    const ChatTile(
                      imgUrl: 'assets/images/group2.png',
                      name: 'Family 100',
                      text: 'Pilih kantong kanan atau saku...',
                      time: '05.42',
                      unread: false,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
