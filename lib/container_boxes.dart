import 'package:flutter/material.dart';

class Reused_widgets extends StatelessWidget {
  Reused_widgets(this.colour, this.cardChild, [this.onPress]);
  final Color colour;
  final Widget cardChild;
  final onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
