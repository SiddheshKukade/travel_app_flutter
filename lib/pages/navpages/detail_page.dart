import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
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
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                ))
          ],
        ),
      ),
    );
  }
}
