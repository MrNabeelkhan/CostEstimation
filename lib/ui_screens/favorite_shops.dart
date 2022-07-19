import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../utils/myColors.dart';

class FavoriteShops extends StatelessWidget {
  const FavoriteShops({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text('Favorite Shopes'),
          leading: IconButton(
            icon: Padding(
              padding: const EdgeInsets.only(left:12),
              child: SvgPicture.asset(
                'assets/images/Vector.svg',
                width: 12,
                height: 15,
              ),
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bgimage.png'),
                    fit: BoxFit.fill)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(height: 20),
                  ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: 10,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return favoriteShopCard();
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget favoriteShopCard() {
  return Container(
    margin: const EdgeInsets.all(8),
    height: Get.height * .11,
    width: Get.width,
    decoration: BoxDecoration(
        color: MyColors.mywhcolor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: MyColors.mywhcolor, width: 1)),
    child: Row(
      children: [
        const SizedBox(
          width: 5,
        ),
        Image.asset(
          'assets/images/Cat.png',
          height: 80,
          width: 100,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
            Text(
              'Lorem ipsum',
              style: TextStyle(
                  color: MyColors.myblackcolor,
                  fontSize: 15,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'George Lee Court, King St., Piddin...',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: MyColors.myblackcolor,
                  fontSize: 11,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'Opens at 12:00 PM - Closes at 3PM',
              style: TextStyle(
                  color: MyColors.myblackcolor,
                  fontSize: 11,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w400),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text('Join'),
                    const SizedBox(width: 8),
                    const Icon(Icons.directions),

                    const SizedBox(width: 8),
                    // SvgPicture.asset('assets/images/righturn.svg',color: Colors.black,),
                    RatingBarIndicator(
                      rating: 2.75,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.black,
                      ),
                      itemCount: 5,
                      itemSize: 15.0,
                      direction: Axis.horizontal,
                    ),
                  ],
                ),
                // SizedBox(width: Get.width*.12,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Row(
                    children: [
                      Column(
                        children: const [
                          Icon(
                            Icons.directions_walk,
                            size: 15,
                          ),
                          Text(
                            '3 M',
                            style: TextStyle(fontSize: 9),
                          ),
                        ],
                      ),
                      const SizedBox(width: 8),
                      Column(
                        children: const [
                          Icon(
                            Icons.directions_car_rounded,
                            size: 15,
                          ),
                          Text(
                            '1 M',
                            style: TextStyle(fontSize: 9),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
