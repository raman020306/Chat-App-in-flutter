// ignore_for_file: file_names

import 'package:chat_app/Drawer.dart';
import 'package:chat_app/utiles/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        title: const Text('Chat App'),
        
      ),
      drawer:   const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          child: ListTile(
            onTap: () => Navigator.pushNamed(context, MyRoutes.ChatScreen),
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://st5.depositphotos.com/49310552/67587/i/450/depositphotos_675879634-stock-photo-cute-preteen-boy-blond-hair.jpg"),
            ),
            title: const Text('Raman Kumar'),
            subtitle: const Text('Hey, How are you ?'),
            trailing: const Text("Today"),
          ),
        ),
      ),
    );
  }
}
