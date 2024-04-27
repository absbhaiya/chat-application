import 'package:chat_application_iub_cse464/const_config/color_config.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final Color color;
  final String message; // New field for message text

  const ChatBubble({super.key, required this.color, required this.message});

  @override
  Widget build(BuildContext context) {
    // Extracting user name from message (assuming the user name is the first word in the message)
    final List<String> words = message.split(' ');
    final String userName = words.isNotEmpty ? words.first : 'User';

    // Generating avatar URL based on user name (replace this with your logic)
    const String avatarUrl = 'https://scontent.fdac14-1.fna.fbcdn.net/v/t39.30808-6/435174102_2752081101614629_2466825030306846096_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_ohc=hB2KU51CUrEAb7uh0X5&_nc_ht=scontent.fdac14-1.fna&oh=00_AfC3WD6WAQDeRqdKQzW9rURiGYXFAQiNrs_ZI2PlvVYwSw&oe=66331368';

    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(avatarUrl), // Display user's avatar
        ),
        const SizedBox(width: 10), // Add spacing between avatar and bubble
        Material(
          borderRadius: BorderRadius.circular(20),
          color: color,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Text(
              message, // Display the message text
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}