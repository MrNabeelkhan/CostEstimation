
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

Widget MyAppBar(){
  return AppBar(
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: const Text(''),
    leading: IconButton(
      icon: SvgPicture.asset('assets/images/Vector.svg',width: 15,height: 15,),
      onPressed: () {
        Get.back();
      },
    ),
  );
}