import 'package:flutter/material.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/custom/custom_rounded_image.dart';

class GastroDetailThree extends StatelessWidget {
  GastroDetailThree({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text("Culture").orelega40s().black(),
          ],
        ),
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Container(
                width: 230,
                height: 150,
                child: FittedBox(
                  child: Image.asset("assets/images/img_recipe_ayam.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              flex: 1,
              child: Text(
                "Over time, it was unexpected that the enjoyment of this meal was very popular with the people of Lombok. Slowly but surely they often make this food for a meal that is usually enjoyed with the family. Until now, Taliwang chicken is also sold in stalls and restaurants so that it is closer to the community and becomes a Lombok culinary specialty that must be tasted by tourists when visiting NTB.",
                textAlign: TextAlign.justify,
              ).nunito20s().black(),
            ),
          ],
        ),
        SizedBox(height: 40),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text("Food Party Of Life Style").orelega40s().black(),
          ],
        ),
        SizedBox(height: 12),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "The food party of lifestyle here has traditional meanings that often include food menus related to Ayam Taliwang",
              textAlign: TextAlign.justify,
            ).nunito20s().black(),
          ],
        ),
        SizedBox(height: 20),
        Container(
          height: 513,
          child: Column(
            children: [
              Row(
                children: const [
                  Expanded(
                      flex: 1,
                      child: CustomRoundedImage(
                        image: "assets/images/img_recipe_ayam.png",
                        outlineRounded: 20,
                        height: 246,
                      )),
                  SizedBox(width: 20),
                  Expanded(flex: 1, child: CustomRoundedImage(image: "assets/images/img_recipe_ayam.png", outlineRounded: 20, height: 246)),
                  SizedBox(width: 20),
                  Expanded(flex: 1, child: CustomRoundedImage(image: "assets/images/img_recipe_ayam.png", outlineRounded: 20, height: 246)),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Expanded(flex: 1, child: CustomRoundedImage(image: "assets/images/img_recipe_ayam.png", outlineRounded: 20, height: 246)),
                  SizedBox(width: 20),
                  Expanded(flex: 1, child: CustomRoundedImage(image: "assets/images/img_recipe_ayam.png", outlineRounded: 20, height: 246)),
                  SizedBox(width: 20),
                  Expanded(flex: 1, child: CustomRoundedImage(image: "assets/images/img_recipe_ayam.png", outlineRounded: 20, height: 246)),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
