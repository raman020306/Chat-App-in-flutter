import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController messageController = TextEditingController();

  List<types.Message> _messages = [];
  final _user = const types.User(
    id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(
                  "https://imgs.search.brave.com/VidX5HTKylWS9E178gZmUfuNl48stu9xCLbeblJr6JQ/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/cHJlbWl1bS1waG90/by9wb3J0cmFpdC1i/b3ktbG9va2luZy1h/d2F5LWFnYWluc3Qt/YmxhY2stYmFja2dy/b3VuZF8xMDQ4OTQ0/LTE1Nzk2MzUyLmpw/Zz9zaXplPTYyNiZl/eHQ9anBn"),
            ),
            SizedBox(width: 10),
            Text("Raman Kumar"),
            SizedBox(width: 40),
            Icon(Icons.call),
            SizedBox(width: 8),
            Icon(Icons.video_call),
            SizedBox(width: 5),
            Icon(Icons.more_vert),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              // This is where the chat will do

              Chat(
                  messages: _messages,
                  onSendPressed: _handleSendPressed,
                  user: _user),

              Expanded(
                child: Container(),
              ),

              Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                child: Row(children: [
                  Flexible(
                    child: TextField(
                      controller: messageController,
                      maxLines: null,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter message",
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.send,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }

// center part
  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: "id",
      text: message.text,
    );

    // _addMessage(textMessage);
  }

  // void _addMessage(types.Message message) {
  //   setState(() {
  //     _messages.insert(0, message);
  //   });
  // }
}
