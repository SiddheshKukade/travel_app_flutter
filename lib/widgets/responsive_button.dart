import 'package:flutter/material.dart';
import 'package:travel_app_flutter/misc/colors.dart';
import 'package:travel_app_flutter/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool isResponsive;
  double? width;
  String text;
  ResponsiveButton({
    Key? key,
    this.width = 120,
    this.isResponsive = false,
    this.text = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 5,
            ),
            AppText(
              text: text,
              color: Colors.white,
            ),
            Image.asset("img/button-one.png")
          ],
        ),
      ),
    );
  }
}
