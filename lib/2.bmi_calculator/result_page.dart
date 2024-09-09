import 'package:angela_yu/2.bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'components/bottom_button.dart';
import 'components/reusable_card.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {
  final String result;
  final String text;
  final Gender? gender;
  final String tooText;

  const ResultPage(

      {super.key,
      required this.result,
      required this.text,
      required this.tooText,
      required this.gender});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'Bmi Calculator',
          style: kBottomButtonTextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Result',
              style: kLabelTextStyle,
            ),
            Expanded(
              child: ReusableCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '******* ${gender == Gender.male ? 'Male' : 'Female'} *******',
                      style: kLabelTextStyle,
                    ),
                    Text(
                      text,
                      style: kLabelTextStyle,
                    ),
                    Text(
                      result,
                      style: kLabelTextStyle,
                    ),
                    Text(
                      tooText,
                      style: kLabelTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                text: ' Re Calculate')
          ],
        ),
      ),
    );
  }
}
