import 'package:flutter/material.dart';

import '../common_widget/drawer.dart';
class Template extends StatefulWidget {
  const Template({super.key});

  @override
  State<Template> createState() => _BackGroundState();
}

class _BackGroundState extends State<Template> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/created card.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(title: Text("Template"),),
      ),


    );
  }
}
