import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              "Today",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/profile/prof2.jpg"),
            ),
            title: Text(
              "Matthew Sto Tomas commented on your photo",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("1 hour ago"),
            trailing: Icon(Icons.more_horiz, color: Colors.black),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/profile/prof1.jpg"),
            ),
            title: Text(
              "Paul Nazarene Jordan Liked your photo",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("2 hours ago"),
            trailing: Icon(Icons.more_horiz, color: Colors.black),
          ),
          ListTile(
            title: Text(
              "Earlier",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/profile/prof3.jpg"),
            ),
            title: Text(
              "Jane Smith Liked a post your shared",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("3 hours ago"),
            trailing: Icon(Icons.more_horiz, color: Colors.black),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/profile/prof5.jpg"),
            ),
            title: Text(
              "Jane Smith commented on your photo",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("4 hours ago"),
            trailing: Icon(Icons.more_horiz, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
