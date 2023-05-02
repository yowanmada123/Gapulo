import 'package:flutter/material.dart';
import 'package:gastronomy/page/restaurant/restaurant_add/restaurant_new_add_page.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/button/button_base.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';

class RestoBodyTwo extends StatelessWidget {
  const RestoBodyTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Get.height * 0.051),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 120),
              child: Container(
                width: 700,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Give us a ',
                    style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: ONetralBlack),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Restaurant Recommendation ',
                        style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: OPrimaryColor),
                      ),
                      TextSpan(
                        text: 'That you think is good',
                        style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: ONetralBlack),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            OnHoverButton(child: Image.asset('assets/images/img_bg_resto3.png')),
          ],
        ),
        // SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 220),
              child: Stack(children: [
                OnHoverButton(child: Image.asset('assets/images/ic_group_arrow.png')),
                Padding(
                  padding: const EdgeInsets.only(left: 110.0),
                  child: OnHoverButton(
                    child: BaseButton(
                      ontap: () {
                        Get.to(const RestaurantNewAddPage());
                      },
                      width: 0.128 * Get.width,
                      height: 0.065 * Get.height,
                      text: "Add New Restaurant",
                      textSize: 14,
                      color: OGoodGreen,
                      outlineRadius: 30.0,
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OnHoverButton(child: Image.asset('assets/images/img_bg_resto2.png')),
          ],
        ),
        SizedBox(height: 30),

        // Row(
        //   children: [
        //     Expanded(
        //       flex: 1,
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Image.asset("assets/images/img_traditional_food.png"),
        //           SizedBox(height:   13.72),
        //           const Text("Traditional Food").nunito25b().black(),
        //           SizedBox(height:   20),
        //           Container(width:   260, height:   85, child: const Text("Lombok traditional foods that have a lot of stories and meanings behind them", textAlign: TextAlign.justify).nunito20s().black()),
        //           SizedBox(height:   20),
        //           OnHoverButton(
        //             child: BaseButton(
        //               ontap: () {},
        //               text: "See More ...",
        //               color: OPrimaryColor,
        //               outlineRadius: 30,
        //               width:   150,
        //               height:   50,
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //     Expanded(
        //       flex: 1,
        //       child: Column(
        //         children: [
        //           Image.asset("assets/images/img_traditional_drink.png"),
        //           SizedBox(height:   13.72),
        //           const Text("Traditional Food").nunito25b().black(),
        //           SizedBox(height:   20),
        //           Container(width:   260, height:   134, child: const Text("Lombok's special drink is known as one of the areas in Indonesia that offers drinks that are not only delicious but also healthy", textAlign: TextAlign.justify).nunito20s().black()),
        //           SizedBox(height:   20),
        //           OnHoverButton(
        //             child: BaseButton(
        //               ontap: () {},
        //               text: "See More ...",
        //               color: OPrimaryColor,
        //               outlineRadius: 30,
        //               width:   150,
        //               height:   50,
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //     Expanded(
        //       flex: 1,
        //       child: Column(
        //         children: [
        //           Image.asset("assets/images/img_traditional_dessert.png"),
        //           SizedBox(height:   13.72),
        //           const Text("Traditional Food").nunito25b().black(),
        //           SizedBox(height:   20),
        //           Container(width:   260, height:   134, child: const Text("Lombok's special cakes can be one of the complementary instruments for your tour in this city of a thousand mosques.", textAlign: TextAlign.justify).nunito20s().black()),
        //           SizedBox(height:   20),
        //           OnHoverButton(
        //             child: BaseButton(
        //               ontap: () {},
        //               text: "See More ...",
        //               color: OPrimaryColor,
        //               outlineRadius: 30,
        //               width:   150,
        //               height:   50,
        //             ),
        //           )
        //         ],
        //       ),
        //     )
        //   ],
        // ),
        // SizedBox(height:   33),
      ],
    );
  }
}
