import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:get/get.dart';

class BaseButton extends StatelessWidget {
  final IconData? icon;
  final Color? iconColor;
  final String? text;
  final double? textSize;
  final TextStyle? textStyle;
  final FontWeight? textWeight;
  final Color? color;
  final Color? textColor;
  final Function() ontap;
  final String? image;
  final String? iconSvg;
  final Color? outlineColor;
  final double? outlineRadius;
  final double? height;
  final double? width;
  const BaseButton({Key? key, this.icon, this.text, this.color, required this.ontap, this.textColor, this.image, this.iconSvg, this.outlineColor, this.outlineRadius, this.height, this.width, this.textSize, this.textWeight, this.textStyle, this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: (height == null) ? 48 : height,
        width: (height == null) ? Get.width : width,
        decoration: BoxDecoration(color: (color == null) ? const Color(0xff2D79F6) : color, borderRadius: BorderRadius.circular((outlineRadius == null) ? 8 : outlineRadius!), border: Border.all(color: (outlineColor == null) ? Colors.transparent : outlineColor!)),
        child: Center(
          child: (icon == null && image == null && iconSvg == null)
              ? Text(
                  text!,
                  style: TextStyle(fontSize: (textSize == null) ? 15 : textSize, color: (textColor == null) ? Colors.white : textColor, fontWeight: (textWeight == null) ? FontWeight.w700 : textWeight),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (image == null) ...[
                      if (iconSvg == null) ...[
                        Icon(
                          icon,
                          color: (iconColor == null) ? Colors.black : iconColor,
                        )
                      ] else ...[
                        SvgPicture.asset(iconSvg!)
                      ]
                    ] else ...[
                      Image.asset(
                        image!,
                        width: 24,
                        height: 24,
                      )
                    ],
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      text!,
                      style: TextStyle(fontSize: (textSize == null) ? 15 : textSize, color: (textColor == null) ? Colors.white : textColor, fontWeight: (textWeight == null) ? FontWeight.w700 : textWeight),
                    )
                    // (textColor == null)
                    //   ? Text(text == null
                    //     ? ""
                    //     : text!, style: TextStyle(fontSize: (textSize == null)
                    //       ? 20 : textSize, fontWeight: (textWeight == null)
                    //         ? FontWeight.w700
                    //         : textWeight)).white()
                    //           : Text(text == null
                    //             ? ""
                    //             : text!, style: TextStyle(fontSize: (textSize == null)
                    //               ? 20
                    //               : textSize, fontWeight: (textWeight == null)
                    //                 ? FontWeight.w700 : textWeight))
                    // .pageTitleText()
                  ],
                ),
        ),
      ),
    );
  }
}
