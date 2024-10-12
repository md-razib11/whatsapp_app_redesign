import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_app_redesign/widgets/circle_avatar_image_view.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff171717),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                _navBarSection(context),
              ],
            ),
            _messageSection(),
          ],
        ),
      ),
      bottomNavigationBar: _messageSendSection(),
      floatingActionButton: _buildMicSection(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
    );
  }

  Widget _navBarSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                CupertinoIcons.back,
                color: Colors.white,
                size: 32,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_outlined,
                color: Colors.white,
                size: 32,
              ))
        ],
      ),
    );
  }

  Widget _messageSection() {
    return Positioned(
      top: 90,
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFEFFFFC),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            _buildOnlineStatus(),
            const SizedBox(height: 56),
            Expanded(
              child: ListView(
                children: [
                  _conversationRowLeft('Hello!How are you?', '17:14'),
                  _conversationRowLeft('Please call me', '17:15'),
                  _conversationRowLeft('It urgent call me now', '17:19'),
                  _conversationRowRight('I am fine.Please wait 2 min', '17:20'),
                  _conversationRowLeft('Send your cat photo', '19:04'),
                  _conversationRowRight('Please wait 2 min ', '20:21'),
                  _conversationRowLeft('Ok', '20:22')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _messageSendSection() {
    return Container(
      padding: const EdgeInsets.only(left: 24),
      height: 56,
      decoration: const BoxDecoration(color: Color(0xFFEFFFFC)),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 280,
          decoration: BoxDecoration(
            color: const Color(0xff27c1a9),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.white,
                  ),
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.file_upload_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.folder_copy_sharp,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOnlineStatus() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            children: [
              Text(
                'Md Hamza',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Text(
                'Was online 1 minutes ago',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }

  Padding _conversationRowRight(String message, String time) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              _seenMessageLeft(time),
              Row(
                children: [
                  Container(
                    height: 56,
                    width: 180,
                    padding: const EdgeInsets.only(right: 16, left: 16),
                    alignment: Alignment.centerRight,
                    decoration: const BoxDecoration(
                      color: Color(0xff27c1a9),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    child: Text(
                      message,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 16),
                  const CircleAvatarImageView(
                    fileName: 'joy.jpg',
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _conversationRowLeft(String message, String time) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatarImageView(
                fileName: 'hamza.jpg',
              ),
              const SizedBox(width: 16),
              Container(
                height: 56,
                width: 180,
                padding: const EdgeInsets.only(left: 16),
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Text(
                  message,
                ),
              )
            ],
          ),
          _seenMessageRight(time)
        ],
      ),
    );
  }

  Widget _seenMessageRight(String time) {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.done_all_outlined,
              size: 18,
              color: Color(0xff27c1a9),
            )),
        Text(
          time,
          style: const TextStyle(fontSize: 12, color: Color(0xff27c1a9)),
        )
      ],
    );
  }

  SizedBox _buildMicSection() {
    return SizedBox(
      height: 44,
      width: 44,
      child: FloatingActionButton(
        backgroundColor: const Color(0xff27c1a9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        elevation: 0,
        onPressed: () {},
        child: const Icon(
          CupertinoIcons.mic,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _seenMessageLeft(String time) {
    return Row(
      children: [
        Text(
          time,
          style: const TextStyle(fontSize: 12, color: Color(0xff27c1a9)),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.done_all_outlined,
              size: 18,
              color: Color(0xff27c1a9),
            )),
      ],
    );
  }

}


