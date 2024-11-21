import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Index Screen"),
      ),
      body: Center(
        child: Text(
          "This is the Index Screen!",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
