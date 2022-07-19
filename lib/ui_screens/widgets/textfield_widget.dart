import 'package:cost_explanation/utils/myColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String titleText;
  final String hintText;
  final TextEditingController controller;

  const MyTextField(
      {required this.titleText, required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left:14,bottom:6,top:6),
          child: Text(titleText, style: TextStyle(
              color: MyColors.mywhcolor,
              fontSize: 12,
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.w400,fontStyle:FontStyle.italic),),
        ),
        TextFormField(
            controller: controller,
            decoration: InputDecoration(
              filled: true,
              hintText: hintText,
              hintStyle: TextStyle(
                  color: MyColors.mywhcolor.withOpacity(0.2),
                  fontSize: 12,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w400),
              fillColor: MyColors.myblackcolor.withOpacity(0.40),
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(7)),
                borderSide: BorderSide(width: 0.6, color: MyColors.myycolor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(7)),
                borderSide: BorderSide(width: 0.6, color: MyColors.myycolor),
              ),
            )),
      ],
    );
  }
}
