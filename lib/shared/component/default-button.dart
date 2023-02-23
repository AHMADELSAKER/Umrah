import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  double width;
  Function function;
  String text;
  bool isUpper;
  Color? backroundcolor = Colors.blue;

  DefaultButton({
    required this.function,
    this.width = double.infinity,
    required this.text,
    this.isUpper = true,
    this.backroundcolor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      // decoration: BoxDecoration(border:),
      height: 50.0,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0))),
        color: backroundcolor,
        onPressed: () {
          function();
        },
        child: Text(
          isUpper ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
