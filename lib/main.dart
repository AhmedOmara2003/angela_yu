import 'package:angela_yu/5.flash_chat/screens/chat_screen.dart';
import 'package:angela_yu/5.flash_chat/screens/login_screen.dart';
import 'package:angela_yu/5.flash_chat/screens/register_screen.dart';
import 'package:angela_yu/5.flash_chat/screens/welcome_screen.dart';
import 'package:angela_yu/todo_provider/screens/tasks_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'flash_chat_copyd/screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      // initialRoute: WelcomeScreen.id,
      // routes: {
      //   WelcomeScreen.id: (context) => const WelcomeScreen(),
      //   // LoginScreen.id: (context) => const LoginScreen(),
      //   // RegisterScreen.id: (context) => const RegisterScreen(),
      //   // ChatScreen.id: (context) => const ChatScreen(),
      // },+
      home: TasksScreen(),
    );
  }
}
