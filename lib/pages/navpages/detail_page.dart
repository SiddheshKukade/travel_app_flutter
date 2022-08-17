import 'package:flutter/material.dart';
import 'package:travel_app_flutter/misc/colors.dart';
import 'package:travel_app_flutter/widgets/app_buttons.dart';
import 'package:travel_app_flutter/widgets/app_large_text.dart';
import 'package:travel_app_flutter/widgets/app_text.dart';
import 'package:travel_app_flutter/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStarts = 3;
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 370,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/mountain.jpeg"),
                        fit: BoxFit.cover),
                  ),
                )),
            Positioned(
                left: 20,
                top: 50,
                child: Container(
                  width: MediaQuery.of(context).size.width - 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.menu_rounded),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_vert),
                        color: Colors.white,
                      )
                    ],
                  ),
                )),
            Positioned(
              top: 330,
              child: Container(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 30),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          text: "Mahakal Mandir",
                          color: Colors.black54.withOpacity(0.8),
                        ),
                        AppLargeText(text: "\$ 250", color: Colors.black54)
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      Icon(
                        Icons.location_on,
                        color: AppColors.mainColor,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      AppText(
                        text: "Ujjain, Madhya Pradesh",
                        color: AppColors.textColor1,
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Wrap(
                            children: List.generate(5, (index) {
                          return Icon(
                            Icons.star,
                            color: index < gottenStarts
                                ? AppColors.starColor
                                : AppColors.textColor1,
                          );
                        })),
                        SizedBox(
                          width: 10,
                        ),
                        AppText(
                          text: "(3.0)",
                          color: AppColors.textColor2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(children: [
                      AppLargeText(
                        text: "People",
                        color: Colors.black.withOpacity(0.8),
                        size: 20,
                      ),
                    ]),
                    SizedBox(
                      height: 5,
                    ),
                    Row(children: [
                      AppText(
                        text: "Number of people in group",
                        color: AppColors.mainTextColor,
                      )
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: List.generate(
                        5,
                        (index) => InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: AppButtons(
                              color: index == selectedIndex
                                  ? AppColors.textColor1
                                  : Colors.black26,
                              backgroundColor: index == selectedIndex
                                  ? AppColors.textColor1
                                  : Colors.black26,
                              size: 50,
                              text: (index + 1).toString(),
                              borderColor: AppColors.buttonBackground,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        AppLargeText(
                          text: "Description",
                          size: 20,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AppText(
                      text:
                          "Mahakaleshwar Jyotirlinga is a Hindu temple dedicated to Shiva and is one of the twelve Jyotirlingas, shrines which are said to be the most sacred abodes of Shiva. ",
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 20,
                left: 20,
                right: 28,
                child: Row(
                  children: [
                    AppButtons(
                        color: AppColors.textColor1,
                        backgroundColor: Colors.white,
                        size: 60,
                        isIcon: true,
                        icon: Icons.favorite_border,
                        borderColor: AppColors.textColor2),
                    SizedBox(
                      width: 30,
                    ),
                    ResponsiveButton(
                      text: "Book Trip Now",
                      isResponsive: true,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
