import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chat')),
      body: Column(
        children: [
          Expanded(child: ListView.builder(
            itemCount: 10, // Replace with actual chat count
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Chat with User $index'),
                onTap: () {
                  // Navigate to Chat Details
                },
              );
            },
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: TextField(decoration: InputDecoration(hintText: 'Type a message'))),
                IconButton(icon: Icon(Icons.send), onPressed: () {
                  // Send message logic
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}