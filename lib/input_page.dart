import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1D1E33),
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: const Color(0xFF1D1E33),
                    cardChild: IconContent(
                      FontAwesomeIcons.mars,
                      'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: const Color(0xFF1D1E33),
                    cardChild: IconContent(
                      FontAwesomeIcons.venus,
                      'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: const Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: const Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: const Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 60.0,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
            color: Color(0xFFEA1556),
            child: const Center(
                child: Text(
              'CALCULATE YOUR BMI',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            )),
          )
        ],
      ),
    );
  }
}
