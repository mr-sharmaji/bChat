import 'package:flutter/material.dart';
import 'package:b_chat/screens/welcome_screen.dart';
import 'package:b_chat/screens/login_screen.dart';
import 'package:b_chat/screens/registration_screen.dart';
import 'package:b_chat/screens/chat_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

void main(){
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: <String, WidgetBuilder>{
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
