import 'package:chat_app/ChildScreen_.dart';
import 'package:chat_app/signup_page.dart';
import 'package:chat_app/utiles/routes.dart';
import 'package:flutter/material.dart';

import 'Chat_Screen.dart';
import 'Home_page.dart';
import 'Login_page.dart';

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

      initialRoute: MyRoutes.SignUpPage,

      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.SignUpPage: (context) => const SignUp(),
        MyRoutes.HomePage: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.ChatScreen: (context) => const ChatScreen(),
        MyRoutes.ChildScreen:(context) => const ChildScreen(),
       
      },
    );
  }
}
