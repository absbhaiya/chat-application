import 'package:chat_application_iub_cse464/const_config/color_config.dart';
import 'package:chat_application_iub_cse464/const_config/text_config.dart';
import 'package:flutter/material.dart';

// Define a simple User class to hold user information
class User {
  final String name;
  final String avatarUrl;

  User({required this.name, required this.avatarUrl});
}

class DiscoverPage extends StatelessWidget {
  DiscoverPage({super.key}); // Constructor correction

  // Example list of registered users (replace it with actual user data)
  final List<User> users = [
    User(name: "Asif", avatarUrl: "https://scontent.fdac14-1.fna.fbcdn.net/v/t39.30808-6/435174102_2752081101614629_2466825030306846096_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_ohc=hB2KU51CUrEAb7uh0X5&_nc_ht=scontent.fdac14-1.fna&oh=00_AfC3WD6WAQDeRqdKQzW9rURiGYXFAQiNrs_ZI2PlvVYwSw&oe=66331368"),
    User(name: "Sufyan", avatarUrl: "https://scontent.fdac14-1.fna.fbcdn.net/v/t39.30808-6/415509540_7159241727501365_1965020056312696475_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=5f2048&_nc_ohc=pnd2YzEwXe0Ab6BNQFo&_nc_ht=scontent.fdac14-1.fna&oh=00_AfDlwXlZTPzK_WdZPd1WZixo6pkzQ2WKopM0d0va4YB5kw&oe=66331A4E"),
    User(name: "Shawmi", avatarUrl: "https://scontent.fdac14-1.fna.fbcdn.net/v/t39.30808-6/437361529_2300937656766374_3707191743559282037_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_ohc=ZHsB_O-hTZcAb7sneOm&_nc_ht=scontent.fdac14-1.fna&oh=00_AfAh3AV5bmy3sbTxUb-BdzLogq9A18iwgDCogZsl8sXVOA&oe=66330C1D"),
    // Add more users here as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.scaffoldColor,
      appBar: AppBar(
        title: const Text('Registered Users'), // Title text wrapped with const
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(user.avatarUrl),
            ),
            title: Text(user.name),
            onTap: () {
              // Handle tap on user item if needed
            },
          );
        },
      ),
    );
  }
}
