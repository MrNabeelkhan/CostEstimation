import 'package:cost_explanation/ui_screens/current_booking_queue.dart';
import 'package:cost_explanation/ui_screens/widgets/button_widget.dart';
import 'package:cost_explanation/ui_screens/widgets/mytext_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../utils/myColors.dart';
import 'check_out_fromchiken.dart';

class CheckScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: const Text('Check Out'),
            leading: IconButton(
              icon: SvgPicture.asset(
                'assets/images/Vector.svg',
                width: 12,
                height: 15,
              ),
              onPressed: () {
                Get.back();
              },
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: SvgPicture.asset('assets/images/bell.svg'),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Container(
              height: Get.height * .95,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bgimage.png'),
                      fit: BoxFit.fill)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    customCard(
                        title: "Men's Fade",
                        datetime:
                        "November 15th 2021, WAITING LIST , Client Name",
                        barbarName: 'Barber Name',
                        imageUrl: 'assets/images/person.png',
                        imageName: 'John Doe'),
                    customCard(
                        title: "Shave",
                        datetime:
                        "November 15th 2021, WAITING LIST, Client Name, Barber Name",
                        barbarName: 'Barber Name',
                        imageUrl: 'assets/images/person.png',
                        imageName: 'John Doe'),

                    customCard(
                        title: "Men's Fade 2",
                        datetime:
                        "November 15th 2021, WAITING LIST , Client Name",
                        barbarName: 'Barber Name',
                        imageUrl: 'assets/images/person.png',
                        imageName: 'John Doe'),

                    customCard(
                        title: "Shave 2",
                        datetime:
                        "November 15th 2021, WAITING LIST, Client Name, Barber Name",
                        barbarName: 'Barber Name',
                        imageUrl: 'assets/images/person.png',
                        imageName: 'John Doe'),

                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Promo Code',
                                style: TextStyle(
                                    color: MyColors.mywhcolor,
                                    fontSize: 14,
                                    fontFamily: 'Ubuntu',
                                    fontStyle: FontStyle.italic),
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              ButtonWidget(
                                borderColor: MyColors.mydcolor,
                                text: 'Enter Code',
                                textColor: MyColors.mydcolor,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              ButtonWidget(
                                borderColor: MyColors.myycolor,
                                text: 'Claim',
                                textColor: MyColors.mywhcolor,
                                buttonColor: MyColors.myycolor,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          myText(title: 'Subtotal', value: 'xx', mysize: 14),
                          myText(title: 'Discount', value: 'xx', mysize: 14),
                          myText(title: 'Booking fee', value: 'xx', mysize: 14),

                          myText(title: 'Total', value: 'xx', mysize: 16),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height * .15,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(CurrentBookingQueue());
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: Get.width * .25),
                        height: 40,
                        decoration: BoxDecoration(
                          color: MyColors.myycolor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                          child: Text(
                            'CheckOut Nows',
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 14,
                                fontFamily: 'Ubuntu',
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
