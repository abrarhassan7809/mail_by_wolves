import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionBar extends StatefulWidget {
  const ActionBar({super.key});

  @override
  State<ActionBar> createState() => _ActionBarState();
}

class _ActionBarState extends State<ActionBar> {
  String? selectedOption;
  final List<String> dropdownOptions = ['Select All', 'Deselect All', 'Enable Select Mode'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 50,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    hint: const Text("Select"),
                    value: selectedOption,
                    onChanged: (String? value) {
                      setState(() {
                        selectedOption = value!;
                      });
                    },
                    items: dropdownOptions.map((String option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: SizedBox(
                          width: 80,
                          child: Text(
                            option,
                            style: const TextStyle(color: Colors.grey),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          // Search Button
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.grey,
              tooltip: "Search",
            ),
          ),
          const SizedBox(width: 10),
          // Sort Button
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.sort),
              color: Colors.grey,
              tooltip: "Sort",
            ),
          ),
          const SizedBox(width: 10),
          // Filter Button
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.filter_alt_outlined),
              color: Colors.grey,
              tooltip: "Filter",
            ),
          ),
          const SizedBox(width: 10),
          // Actions Button
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
              color: Colors.grey,
              tooltip: "Actions",
            ),
          ),
        ],
      ),
    );
  }
}
