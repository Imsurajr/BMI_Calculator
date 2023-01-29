import 'package:flutter/material.dart';
import 'constants.dart';

class gender_cards extends StatelessWidget {
  gender_cards({required this.reqIcon, required this.gender});

  final IconData reqIcon;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          reqIcon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
