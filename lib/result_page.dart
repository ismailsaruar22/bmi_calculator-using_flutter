import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmi;
  final String bmiStaus;
  final String bmiComment;
  ResultPage(
      {required this.bmi, required this.bmiStaus, required this.bmiComment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarBackgroundColor,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              alignment: Alignment.topCenter,
              child: const Text(
                'Your Result',
                style: kboldTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiStaus,
                    style: bmiResultStatusColor,
                  ),
                  Text(
                    bmi.toString(),
                    style: bmiResultStyle,
                  ),
                  Text(
                    'Normal BMI range: ',
                    style: kLabelTextStyle.copyWith(color: Colors.white54),
                  ),
                  Text(
                    "18.5 - 25 kg/m2",
                    style: kLabelTextStyle.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    bmiComment,
                    style: kLabelTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: kBottomContainerColor,
            ),
            height: 60.0,
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: kLabelTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
