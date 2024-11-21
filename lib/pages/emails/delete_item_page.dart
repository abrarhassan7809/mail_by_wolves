import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeleteItemPage extends StatefulWidget {
  const DeleteItemPage({super.key});

  @override
  State<DeleteItemPage> createState() => _DeleteItemPageState();
}

class _DeleteItemPageState extends State<DeleteItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delete Item Screen"),
      ),
      body: Center(
        child: Text(
          "This is the Delete Item Screen!",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
