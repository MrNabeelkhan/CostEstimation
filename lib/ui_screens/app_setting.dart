import 'package:cost_explanation/ui_screens/current_booking_queue.dart';
import 'package:cost_explanation/ui_screens/edit_profile.dart';
import 'package:cost_explanation/ui_screens/favorite_shops.dart';
import 'package:cost_explanation/utils/myColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AppSetting extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          height: Get.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bgimage.png'),
                  fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.only(top: 70, left: 30, right: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          child: Image.asset(
                            'assets/images/pic.png',
                            height: 80,
                            width: 80,
                          ),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi Charles!',
                              style: TextStyle(
                                  color: MyColors.mywhcolor,
                                  fontSize: 18,
                                  fontFamily: 'Ubuntu',
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              'Relax Feel great,look comfident!',
                              style: TextStyle(
                                  color:MyColors.mywhcolor,
                                  fontSize: 9,
                                  fontFamily: 'Ubuntu',
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                    InkWell(
                      child: Container(
                        height: 25,
                        width: 59,
                        decoration: BoxDecoration(
                            border: Border.all(color:MyColors.myycolor, width: 1),
                            borderRadius: BorderRadius.circular(27)),
                        child: Center(
                            child: Text(
                          'Edit Profile',
                          style: TextStyle(
                            color:MyColors.mywhcolor,
                            fontSize: 9,
                            fontFamily: 'Ubuntu',
                          ),
                        )),
                      ),
                      onTap: () => Get.to(EditProfile()),
                    )
                  ],
                ),
                SizedBox(height: Get.height * .05),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      InkWell(
                        child: customButton(
                          title: 'Current & Future Booking',
                        ),
                        onTap:(){
                          Get.to(CurrentBookingQueue());
                        },
                      ),
                      InkWell(
                        child: customButton(
                          title: 'Favorite Shops',
                        ),
                        onTap:(){
                          Get.to(FavoriteShops());
                        },
                      ),
                      customButton(
                        title: 'Payment Method',
                      ),
                      customButton(
                        title: 'Change Password',
                      ),
                      customButton(
                        title: 'Support',
                      ),
                      customButton(
                        title: 'Rate the App',
                      ),  customButton(
                        title: 'Language',
                      ), customButton(
                        title: 'About Us',
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget customButton({required String title}) {
  return Column(
    children: [
      Container(
        height: Get.height * .057,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: TextStyle(
                  color: MyColors.mywhcolor,
                  fontSize: 13,
                  fontFamily: 'Ubuntu',
                )),
            SvgPicture.asset(
              'assets/images/backicon.svg',
              height: 12,
              width: 6.75,
            )
          ],
        ),
      ),
      Divider(
        endIndent: 20,
        color: MyColors.mydcolor,
        thickness: 1,
      ),
    ],
  );
}
