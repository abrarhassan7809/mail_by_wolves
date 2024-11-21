import 'package:flutter/material.dart';

class GlobalAddressListPage extends StatefulWidget {
  const GlobalAddressListPage({super.key});

  @override
  State<GlobalAddressListPage> createState() => _GlobalAddressListPageState();
}

class _GlobalAddressListPageState extends State<GlobalAddressListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Global Address Screen"),
      ),
      body: Center(
        child: Text(
          "This is the Global Address Screen!",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
