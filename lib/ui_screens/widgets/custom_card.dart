import 'package:cost_explanation/utils/myColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
          color: MyColors.myycolor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: MyColors.mywhcolor, width: 1)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/Cat.png',
                  height: 62,
                  width: 87,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Steve’s Barbershop',
                      style: TextStyle(
                          color: MyColors.myblackcolor,
                          fontSize: 15,
                          fontFamily: 'Ubuntu',
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Sunday, January 30th, 2022',
                      style: TextStyle(
                          color: MyColors.myblackcolor,
                          fontSize: 11,
                          fontFamily: 'Ubuntu',
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic),
                    ),
                    Row(
                      children: [
                        Text(
                          'Shave - ',
                          style: TextStyle(
                              color: MyColors.myblackcolor,
                              fontSize: 11,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.italic),
                        ),
                        Text(
                          'At home',
                          style: TextStyle(
                              color: MyColors.mywhcolor,
                              fontSize: 11,
                              fontFamily: 'Ubuntu',
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '1:30AM - 2:00PM',
                          style: TextStyle(
                              color: MyColors.myblackcolor,
                              fontSize: 11,
                              fontFamily: 'Ubuntu',
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          'Time left: 00:00:28',
                          style: TextStyle(
                              color: MyColors.mywhcolor,
                              fontSize: 11,
                              fontFamily: 'Ubuntu',
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          // const SizedBox(
          //   width: 20,
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/remove.svg',
                      height: 18,
                      width: 18,
                    ),
                    Text(
                      'No-Show',
                      style: TextStyle(
                          color: MyColors.myblackcolor,
                          fontSize: 7,
                          fontFamily: 'Ubuntu',
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/add.svg',
                      height: 18,
                      width: 18,
                    ),
                    Text(
                      'cancel',
                      style: TextStyle(
                          color: MyColors.myblackcolor,
                          fontSize: 7,
                          fontFamily: 'Ubuntu',
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
