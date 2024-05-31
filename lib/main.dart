import 'package:chat_app/utiles/routes.dart';
import 'package:flutter/material.dart';

import 'Home_page.dart';
import 'Login_page.dart';
import 'chat_screen.dart';



void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),

      initialRoute:"/",

      routes: {
         "/" :(context) => const LoginPage(),
       MyRoutes.HomePage:(context) => const HomePage(),
        MyRoutes.loginRoute:(context) => const LoginPage(),
        MyRoutes.ChatScreen:(context) => const ChatScreen(),
      },

      
    );
  }
}
