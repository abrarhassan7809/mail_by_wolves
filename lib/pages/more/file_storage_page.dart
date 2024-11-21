import 'package:flutter/material.dart';

class FileStoragePage extends StatefulWidget {
  const FileStoragePage({super.key});

  @override
  State<FileStoragePage> createState() => _FileStoragePageState();
}

class _FileStoragePageState extends State<FileStoragePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("File Storage Screen"),
      ),
      body: Center(
        child: Text(
          "This is the File Storage Screen!",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
