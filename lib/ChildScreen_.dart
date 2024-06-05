
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
class ChildScreen extends StatefulWidget {
  const ChildScreen({super.key});

  @override
  State<ChildScreen> createState() => _ChildScreenState();
}

class _ChildScreenState extends State<ChildScreen> {

   final List<types.Message> _messages = [];
  final _user = const types.User(
    id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            // CircleAvatar(
            //   backgroundImage: NetworkImage(
            //       "https://st5.depositphotos.com/49310552/67587/i/450/depositphotos_675879634-stock-photo-cute-preteen-boy-blond-hair.jpg"),
            // ),
            SizedBox(
              width: 10.0,
            ),
            Text("DVS Career Counsellor (Child)"),
          ],
        ),
      ),
      body: Chat(
          messages: _messages,
          onSendPressed: _handleSendPressed,
          user: _user),
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

    _addMessage(textMessage);
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }
}

// class SppechToText extends StatefulWidget {
//   const SppechToText({super.key});

//   @override
//   State<SppechToText> createState() => _SppechToTextState();
// }

// class _SppechToTextState extends State<SppechToText> {
//   final SppechToText _sppechToText = SppechToText();

  
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
