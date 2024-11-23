import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mail_by_wolves/pages/emails/index_page.dart';

class ItemCardList extends StatefulWidget {
  const ItemCardList({super.key});

  @override
  State<ItemCardList> createState() => _ItemCardListState();
}

class _ItemCardListState extends State<ItemCardList> {
  final List<Map<String, String>> emails = [
    {
      'sender': 'Alice',
      'subject': 'Meeting Reminder',
      'message': 'Don\'t forget our meeting tomorrow at 10 AM.',
      'date': '2024-11-23',
    },
    {
      'sender': 'Bob',
      'subject': 'Weekly Report',
      'message': 'Here is the weekly report for your review.',
      'date': '2024-11-22',
    },
    {
      'sender': 'Charlie',
      'subject': 'Holiday Greetings',
      'message': 'Wishing you a happy holiday season!',
      'date': '2024-11-21',
    },
    {
      'sender': 'Diana',
      'subject': 'Invoice #12345',
      'message': 'Your invoice for November is attached.',
      'date': '2024-11-20',
    },
    {
      'sender': 'Eve',
      'subject': 'Project Update',
      'message': 'The project is on track for the deadline.',
      'date': '2024-11-19',
    },
    {
      'sender': 'Flice',
      'subject': 'Meeting Reminder',
      'message': 'Don\'t forget our meeting tomorrow at 10 AM.',
      'date': '2024-11-23',
    },
    {
      'sender': 'Gob',
      'subject': 'Weekly Report',
      'message': 'Here is the weekly report for your review.',
      'date': '2024-11-22',
    },
    {
      'sender': 'Harlie',
      'subject': 'Holiday Greetings',
      'message': 'Wishing you a happy holiday season!',
      'date': '2024-11-21',
    },
    {
      'sender': 'Iiana',
      'subject': 'Invoice #12345',
      'message': 'Your invoice for November is attached.',
      'date': '2024-11-20',
    },
    {
      'sender': 'Jve',
      'subject': 'Project Update',
      'message': 'The project is on track for the deadline.',
      'date': '2024-11-19',
    },
  ];

  final Set<int> _selectedItems = {};

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: emails.length,
        itemBuilder: (context, index) {
          final email = emails[index];
          final isSelected = _selectedItems.contains(index);
          return GestureDetector(
            onLongPress: () {
              setState(() {
                if (isSelected) {
                  _selectedItems.remove(index);
                } else {
                  _selectedItems.add(index);
                }
              });
            },
            child: Card(
              color: isSelected ? Colors.orange.shade100 : Colors.white,
              elevation: 2.0,
              margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 2.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    email['sender']![0].toUpperCase(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                title: Text(email['subject'] ?? 'No Subject'),
                subtitle: Text(
                  email['message'] ?? 'No Message',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Text(
                  email['date'] ?? 'Unknown Date',
                  style: const TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => IndexPage(email: email)));
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
