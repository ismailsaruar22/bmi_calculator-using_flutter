import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;
  IconContent(this.icon, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 70,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFFE9EAEF),
          ),
        ),
      ],
    );
  }
}
