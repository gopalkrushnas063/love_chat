import 'package:flutter/material.dart';
import 'auth_service.dart';
import 'screens/auth_screen.dart';
import 'screens/chat_screen.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Consumer<AuthService>(
        builder: (context, auth, _) {
          return auth.currentUser == null ? const AuthScreen() : const ChatScreen();
        },
      ),
    );
  }
}