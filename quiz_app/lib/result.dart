import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 200),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              "You Scored $resultScore/10",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextButton(
              child: Text(
                'Restart Quiz!',
              ),
              style: TextButton.styleFrom(
                primary: Colors.red,
              ),
              onPressed: resetHandler,
            ),
          ],
        ),
      ),
    );
  }
}
