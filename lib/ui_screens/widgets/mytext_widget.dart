import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget myText({required String title, required value,required double mysize}) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 7),
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: Get.width * .5,
          child: Text(
            title,
            style:  TextStyle(
                color: Colors.white, fontSize: mysize, fontFamily: 'Ubuntu',fontStyle:FontStyle.italic),
          ),
        ),
        SizedBox(  width: Get.width*.1 ,),
        Padding(
          padding: const EdgeInsets.only(right: 50.0),
          child: Text(
            value,
            style:  TextStyle(
                color: Colors.white, fontSize: mysize, fontFamily: 'Ubuntu',fontStyle:FontStyle.italic),
          ),
        ),
      ],
    ),
  );
}