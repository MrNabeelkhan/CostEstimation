import 'package:cost_explanation/ui_screens/widgets/custom_card.dart';
import 'package:cost_explanation/utils/myColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CurrentBookingQueue extends StatefulWidget {
  @override
  State<CurrentBookingQueue> createState() => _CurrentBookingQueueState();
}
class _CurrentBookingQueueState extends State<CurrentBookingQueue> {
  final List<String> _choice = ['Bookings', 'Queue'];

  int currentChoice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text('Current & Future Bookings'),
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

      ),
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bgimage.png'),
                fit: BoxFit.fill)),
        child: SafeArea(
          child: Container(
            height: Get.height,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                   SizedBox(
                    height: Get.height*.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        child: Text(_choice[0],
                            style: TextStyle(
                                color: currentChoice == 0
                                    ? MyColors.myycolor
                                    : MyColors.mywhcolor,
                                fontSize: 18,
                                fontFamily: 'Ubuntu',
                                fontStyle: FontStyle.italic)),
                        onPressed: () {
                          setState(() {
                            currentChoice = 0;
                          });
                        },
                      ),
                      Container(
                        width: 10,
                        height: 20,
                        color: Colors.transparent,
                        margin: const EdgeInsets.all(12),
                        child: VerticalDivider(
                          color: MyColors.mywhcolor.withOpacity(.5),
                          width: 2,
                          thickness: 2,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            currentChoice = 1;
                          });
                        },
                        child: Text(_choice[1],
                            style: TextStyle(
                                color: currentChoice == 1
                                    ? MyColors.myycolor
                                    : MyColors.mywhcolor,
                                fontSize: 18,
                                fontFamily: 'Ubuntu',
                                fontStyle: FontStyle.italic)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: Get.height*.05,
                  ),
                  //Stream of Booking Data
                  currentChoice == 0
                      ? ListView.builder(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              side: BorderSide(
                                                  color: Colors.green
                                                      .withOpacity(0.50))),
                                          backgroundColor: MyColors.myblackcolor,
                                          actions: [
                                            Container(
                                              padding: EdgeInsets.all(20),
                                              width: Get.width,
                                              child: Column(
                                                children: [
                                                  Text(
                                                    'All Cancellations are subject to a 30% fee.',
                                                    style: TextStyle(
                                                        color:
                                                            MyColors.mywhcolor),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  const SizedBox(height: 20),
                                                  InkWell(
                                                    onTap: () =>
                                                        Navigator.pop(context),
                                                    child: Container(
                                                      height: Get.height * .04,
                                                      width: Get.width * .25,
                                                      child: const Center(
                                                          child: Text(
                                                        'confirm',
                                                        style: TextStyle(
                                                            color: Colors.white),
                                                      )),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                          color:
                                                              MyColors.myycolor),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ]);
                                    });
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 18),
                                child: CustomCard(),
                              ),
                            );
                          },
                        )
                      //Stream of Booking Data
                      : ListView.builder(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 18),
                              child: CustomCard(),
                            );
                          },
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
