import 'package:flutter/material.dart';

class CustomNoteItems extends StatelessWidget {
  const CustomNoteItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      padding: const EdgeInsets.only(left: 16,top: 16,bottom: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.blue),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Text(
                'Flutter tips',
                style: TextStyle(color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            subtitle: const Text(
              'Build your Career with Mohamed Fdawy',
              style: TextStyle(color: Colors.black54,
                fontSize: 18,
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 25,
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 24,top: 8),
            child:  Text(
              'dec 16,2024',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}