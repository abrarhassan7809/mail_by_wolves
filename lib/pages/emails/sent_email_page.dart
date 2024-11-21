import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SentEmailPage extends StatefulWidget {
  const SentEmailPage({super.key});

  @override
  State<SentEmailPage> createState() => _SentEmailPageState();
}

class _SentEmailPageState extends State<SentEmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sent Email Screen"),
      ),
      body: Center(
        child: Text(
          "This is the Sent Email Screen!",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
