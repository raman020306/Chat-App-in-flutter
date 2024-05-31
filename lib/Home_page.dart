// ignore: file_names
import 'package:chat_app/utiles/routes.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          child: ListTile(
            onTap: () => Navigator.pushNamed(context, MyRoutes.ChatScreen),
            leading: Image.network(
              "https://img.freepik.com/premium-vector/avatar-portrait-young-caucasian-boy-man-round-frame-vector-cartoon-flat-illustration_551425-19.jpg?w=740",
            ),
            title: Text('Raman Kumar'),
            subtitle: Text('Hey, How are you ?'),
            trailing: Text("Today"),
          ),
        ),
      ),
    );
  }
}

// class HomePag extends StatelessWidget {
//   const HomePag({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: 3,
//       itemBuilder: (context, index) {
        
//         return();
//       },
//     );
//   }
// }
