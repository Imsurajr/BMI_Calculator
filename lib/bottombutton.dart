import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.ButtonText});

  final VoidCallback onTap;
  final String ButtonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFEB1555),
        ),
        child: Text(
          ButtonText,
          style: kResultPageStyle,
        ),
        onPressed: onTap,
      ),
      margin: EdgeInsets.only(top: 10),
      height: kBottomContainerHeight,
      width: double.infinity,
    );
  }
}
