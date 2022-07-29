import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/bubble_story.dart';
import 'package:instagram_ui/widgets/user_post.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List users = [
    'Anisa',
    'Dewi',
    'Fatimah',
    'Ayu',
    'Indah',
    'Ika',
    'Sari',
    'Ulfa',
    'Dwi',
    'Novita',
    'Sari'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(
            Icons.add_box_outlined,
            size: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.favorite_border,
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.send_outlined,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return BubbleStory(
                  name: users[index],
                );
              },
              itemCount: users.length,
            ),
          ),
          const Divider(
            height: 1,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return UserPost(name: users[index]);
              },
              itemCount: users.length,
            ),
          ),
        ],
      ),
    );
  }
}
