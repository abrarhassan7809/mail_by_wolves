import 'package:flutter/material.dart';
import 'package:mail_by_wolves/pages/email_page.dart';
import 'package:mail_by_wolves/pages/registration/login_page.dart';
import 'package:mail_by_wolves/pages/registration/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/email',
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/email': (context) => EmailPage()
      }
    );
  }
}


