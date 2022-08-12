import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (_, index) {
            // first parameter context and second parameter is index
            //we want to scroll up and down
            return Container(
                width: double.maxFinite, // max width and height
                height: double.maxFinite,
                decoration: BoxDecoration(
                  // decoration sets the background
                  image: DecorationImage(
                    image: AssetImage("img/" + images[index]),
                  ),
                ));
          }),
    );
  }
}
