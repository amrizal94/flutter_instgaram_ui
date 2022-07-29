import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  const UserPost({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://i.pravatar.cc/100?u=$name'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const Icon(Icons.more_vert),
            ],
          ),
        ),
        SizedBox(
          height: 300,
          child: Image.network(
            'https://picsum.photos/600/300?random=$name',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.favorite_border,
                    size: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.chat_bubble_outline_outlined,
                      size: 30,
                    ),
                  ),
                  Icon(
                    Icons.send_outlined,
                    size: 30,
                  ),
                ],
              ),
              const Icon(
                Icons.bookmark_outline,
                size: 30,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Row(
            children: const [
              Text('Liked By'),
              Text(
                ' Ari ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('and'),
              Text(
                ' others',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 4,
          ),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'kepala_sekolah ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                    text:
                        'Sudah istirahat dulu, waktunya tidur... jangan bergadang jika tiada artinya...'),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Text(
            'View all comments',
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 4,
          ),
          child: Text(
            '18 hours ago',
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        )
      ],
    );
  }
}
