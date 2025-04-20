import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:love_chat/firebase_options.dart';
import 'package:provider/provider.dart';
import 'app.dart';
import 'auth_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AuthService())],
      child: const MyApp(),
    ),
  );
}
