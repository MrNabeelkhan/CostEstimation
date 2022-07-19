import 'package:cost_explanation/ui_screens/widgets/textfield_widget.dart';
import 'package:cost_explanation/utils/myColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class EditProfile extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController genderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            height: Get.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bgimage.png'),
                    fit: BoxFit.fill)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: SvgPicture.asset(
                          'assets/images/Vector.svg',
                          width: 12,
                          height: 15,
                        ),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                      Image.asset(
                        'assets/images/pic.png',
                        height: 72,
                        width: 72,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/images/bell.svg'),
                          SizedBox(
                            width: 6,
                          ),
                          SvgPicture.asset('assets/images/rari.svg'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                      child: Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: MyColors.mywhcolor,
                        fontSize: 18,
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.w400),
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      children: [
                        MyTextField(
                          titleText: 'Full Name',
                          hintText: 'Enter name',
                          controller: nameController,
                        ),
                        SizedBox(height: Get.height * .025),
                        MyTextField(
                          titleText: 'Email',
                          hintText: 'Enter email address',
                          controller: emailController,
                        ),
                        SizedBox(height: Get.height * .025),
                        MyTextField(
                          titleText: 'Contact Number',
                          hintText: '+44xxxxxxxxx',
                          controller: nameController,
                        ),
                        SizedBox(height: Get.height * .025),
                        MyTextField(
                          titleText: 'Location',
                          hintText: "St. Peter's",
                          controller: emailController,
                        ),
                        SizedBox(height: Get.height * .025),
                        MyTextField(
                          titleText: 'Gender',
                          hintText: 'Male / Female / Other',
                          controller: emailController,
                        ),
                        SizedBox(height: Get.height * .028),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Image.asset('assets/images/cap.png',height:57,width:55,),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  side: BorderSide(
                                      color: MyColors.mywhcolor
                                          .withOpacity(0.50))),
                              backgroundColor: MyColors.myblackcolor,
                              content: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                style: TextStyle(color: MyColors.myycolor),
                                textAlign: TextAlign.center,
                              ),
                            );
                          });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: Get.width * .2),
                      height: 40,
                      decoration: BoxDecoration(
                        color: MyColors.myycolor,
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: const Center(
                        child: Text(
                          'Save',
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 14,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
