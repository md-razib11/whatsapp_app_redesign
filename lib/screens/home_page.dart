import 'package:flutter/material.dart';
import 'package:whatsapp_app_redesign/screens/chat_page.dart';
import 'package:whatsapp_app_redesign/widgets/circle_avatar_image_view.dart';
import 'package:whatsapp_app_redesign/widgets/row_button_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: const Color(0xff171717),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        _globalKey.currentState!.openDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              _buildTabBarListView(), // Message , Online , Group
            ],
          ),
          _buildFavoriteContractSection(),
          _buildConversationSection()
        ],
      ),
      floatingActionButton: _floatingActionButton(),
      drawer: _buildDrawer(),
    );
  }

  Widget _buildDrawer() {
    return SafeArea(
      child: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(40),
          ),
        ),
        width: 275,
        backgroundColor: Colors.black54,
        child: Container(
          decoration: const BoxDecoration(
            // boxShadow: [
            //    BoxShadow(
            //      color: Colors.black,
            //      spreadRadius: 50,
            //      blurRadius: 20
            //    )
            // ],
            color: Color(0xf71f1e1e),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  RowButtonText(
                    title: 'Setting',
                    iconData: Icons.arrow_back_ios_rounded,
                  ),
                  Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Row(
                      children: [
                        CircleAvatarImageView(
                          fileName: 'hamza.jpg',
                        ),
                        SizedBox(width: 16),
                        Text(
                          'Md Hamza',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  RowButtonText(title: 'Account', iconData: Icons.key),
                  RowButtonText(title: 'Chat', iconData: Icons.chat_bubble),
                  RowButtonText(
                      title: 'Notification',
                      iconData: Icons.notifications_active),
                  RowButtonText(
                      title: 'Data and storage', iconData: Icons.storage),
                  RowButtonText(title: 'Help', iconData: Icons.help),
                  Padding(
                    padding: EdgeInsets.only(top: 24),
                    child: Divider(
                      color: Color(0xff27c1a9),
                      indent: 20,
                      endIndent: 32,
                    ),
                  ),
                  RowButtonText(
                      title: 'Invite a friend',
                      iconData: Icons.people_alt_outlined),
                ],
              ),
              RowButtonText(title: 'Logout', iconData: Icons.logout),
            ],
          ),
        ),
      ),
    );
  }

  Widget _floatingActionButton() {
    return SizedBox(
      height: 60,
      width: 60,
      child: FloatingActionButton(
        backgroundColor: const Color(0xff27c1a9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () {},
        child: const Icon(Icons.edit_outlined, color: Colors.white),
      ),
    );
  }

  Widget _buildTabBarListView() {
    return SizedBox(
      height: 60,
      child: ListView(
        padding: const EdgeInsets.only(left: 10),
        scrollDirection: Axis.horizontal,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Message',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(width: 24),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Online',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 28,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(width: 24),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Group',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 28,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFavoriteContractSection() {
    return Positioned(
      top: 180,
      left: 0,
      right: 0,
      child: Container(
        height: 230,
        decoration: const BoxDecoration(
          color: Color(0xff27c1a9),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 20, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Favorite contract',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: SizedBox(
                height: 95,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildContractAavater(fileName: 'hamza.jpg', name: 'Hamza'),
                    _buildContractAavater(fileName: 'joy.jpg', name: 'Joy'),
                    _buildContractAavater(fileName: 'ligen.jpg', name: 'Ligen'),
                    _buildContractAavater(
                        fileName: 'minhaz.jpg', name: 'Minhaz'),
                    _buildContractAavater(
                        fileName: 'mustak.jpg', name: 'Mustak'),
                    _buildContractAavater(fileName: 'sam.jpg', name: 'Sam'),
                    _buildContractAavater(
                        fileName: 'shahid.jpeg', name: 'Shahid'),
                    _buildContractAavater(
                        fileName: 'shahin.jpg', name: 'Shahin'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildContractAavater(
      {required String fileName, required String name}) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Column(
        children: [
          CircleAvatarImageView(fileName: fileName),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildConversationSection() {
    return Positioned(
      top: 360,
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        padding: const EdgeInsets.only(top: 50),
        decoration: const BoxDecoration(
          color: Color(0xFFEFFFFC),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.only(top: 0),
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatPage(),
                  ),
                );
              },
              child: _buildConversationRow(
                  'Hamza', 'Hello! How are you?', 'hamza.jpg', 0),
            ),
            _buildConversationRow('Joy', 'Will you visit me?', 'joy.jpg', 2),
            _buildConversationRow(
                'Ligen', 'Borrow money pleas', 'ligen.jpg', 0),
            _buildConversationRow(
                'Minhaz', 'What are you doing?', 'minhaz.jpg', 1),
            _buildConversationRow('Mustak', 'Call me', 'mustak.jpg', 6),
            _buildConversationRow('Sam', 'I am fine', 'sam.jpg', 0),
            _buildConversationRow(
                'Shahid', 'What are you doing?', 'shahid.jpeg', 5),
            _buildConversationRow('Shahin', 'Call me', 'shahin.jpg', 10),
          ],
        ),
      ),
    );
  }

  Widget _buildConversationRow(
      String name, String message, String fileName, int msgCount) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatarImageView(fileName: fileName),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style:
                            const TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        message,
                        style: const TextStyle(fontSize: 16),
                      )
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    '16:35',
                    style: TextStyle(fontSize: 10),
                  ),
                  const SizedBox(height: 12),
                  if (msgCount > 0)
                    CircleAvatar(
                      backgroundColor: const Color(0xff27c1a9),
                      radius: 8,
                      child: Text(
                        msgCount.toString(),
                        style:
                            const TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    )
                ],
              )
            ],
          ),
          const Divider(
            indent: 70,
          )
        ],
      ),
    );
  }
}
