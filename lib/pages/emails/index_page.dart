import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  final Map<String, String>? email;

  const IndexPage({super.key, this.email});

  @override
  Widget build(BuildContext context) {
    // Handle the case where email is null
    if (email == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Index Screen"),
        ),
        body: const Center(
          child: Text(
            "No Email Data Available",
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
        ),
      );
    }

    // Display the email details
    return Scaffold(
      appBar: AppBar(
        title: const Text("Email Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "From: ${email!['sender']}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              "Subject: ${email!['subject']}",
              style: const TextStyle(fontSize: 18, color: Colors.black54),
            ),
            const SizedBox(height: 10),
            Text(
              "Date: ${email!['date']}",
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const Divider(height: 20, thickness: 1.0),
            Text(
              email!['message'] ?? "No Message",
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
