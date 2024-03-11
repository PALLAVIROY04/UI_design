import 'package:flutter/material.dart';
class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var meadia = MediaQuery.of(context).size;
    return Row(
      children: [
        Column(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.height/2,
            )
          ],
        ),
        Column(
          children: [
            Container(
              height: 100,
            )
          ],
        )
      ],
    );
  }
}
