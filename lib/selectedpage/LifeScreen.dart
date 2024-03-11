import 'package:flutter/material.dart';
class Life extends StatefulWidget {

   Life({super.key});

  @override
  State<Life> createState() => _LifeState();
}

class _LifeState extends State<Life> {
 final List a =[
   "assets/images/art of life 7.jpg",
    "assets/images/art of life.jpg",
    "assets/images/art of life3.jpg",
    "assets/images/art of life 4.jpg",
    "assets/images/art of life 5.jpg",
    "assets/images/art of life 6.png",
    "assets/images/art of life 7.jpg",
   "assets/images/art of life 4.jpg",
   "assets/images/art of life3.jpg",
   "assets/images/art of life3.jpg",
   "assets/images/art of life 4.jpg",
   "assets/images/art of life 5.jpg",
   "assets/images/art of life 6.png",
   "assets/images/art of life 7.jpg",
   "assets/images/art of life 4.jpg",
   "assets/images/art of life3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2,
      children: List.generate(a.length, (index) {
        return Card(
          elevation: 20,
          color: Colors.black38,
          child: Image.asset(a[index]
          ),
        );
      }
      ),
      ),
    );
  }
}
