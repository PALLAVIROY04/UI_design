import 'package:flutter/material.dart';
import 'package:ui_design/common_widget/drawer.dart';
class Rspv extends StatefulWidget {
  const Rspv({super.key});

  @override
  State<Rspv> createState() => _RspvState();
}

class _RspvState extends State<Rspv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: NavBar(),
    );
  }
}
