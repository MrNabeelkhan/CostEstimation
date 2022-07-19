import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color buttonColor;
  final String text;
  final Color borderColor;
  final Color textColor;
  final Color shadowColor;

  ButtonWidget(
      {this.buttonColor = Colors.transparent,
        this.text = "Login",
        this.borderColor = Colors.white,
        this.textColor = Colors.white,
        this.shadowColor = Colors.transparent});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      width: 98,
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: borderColor),
          boxShadow: [
            BoxShadow(
                color: shadowColor.withOpacity(.20),
                blurRadius: 30,
                spreadRadius: 0,
                offset: Offset(0, 8))
          ]),
      child: Center(
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 12, fontFamily: 'Ubuntu'),
          )),
    );
  }
}
