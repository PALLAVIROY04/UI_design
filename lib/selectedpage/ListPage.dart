import 'package:flutter/material.dart';
class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: Expanded(
      child: ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 78,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.grey[200]),
          ),
        );
      },
    ),
    ),
      )
    );
  }
}
