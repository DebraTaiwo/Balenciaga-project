import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  ReusableContainer({required this.image, required this.labeltext});

  final String image;
  final String labeltext;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 22,
          ),
          Text(
            labeltext,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}