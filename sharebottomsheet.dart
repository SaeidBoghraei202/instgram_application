import 'dart:ui';

import 'package:flutter/material.dart';

class Sharebottomsheet extends StatelessWidget {
  Sharebottomsheet(this.controller, {super.key});
  final ScrollController? controller;
  var itemName = [
    'saeed',
    'ali',
    'mamad',
    'reza',
    'farzad',
    'ahmad',
    'mahsa',
    'mobina',
    'bahar',
    'ali',
    'milad',
    'pedram',
    'narges',
    'mostafa'
  ];
  List<String> imageList = [
    'images/s1.png',
    'images/s3.png',
    'images/s2.png',
    'images/s4.png',
    'images/s7.png',
    'images/s5.png',
    'images/s1.png',
    'images/s6.png',
    'images/s1.png',
    'images/s3.png',
    'images/s2.png',
    'images/s4.png',
    'images/s7.png',
    'images/s5.png',
    'images/s1.png',
    'images/s6.png',
  ];
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(36), topRight: Radius.circular(36)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          color: Color.fromRGBO(255, 255, 255, 0.4),
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: _getContent(),
        ),
      ),
    );
  }

  Widget _getContent() {
    return CustomScrollView(
      controller: controller,
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                width: 67,
                height: 5,
                margin: EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Text(
                      'Share',
                      style: TextStyle(
                          fontSize: 24, color: Colors.white, fontFamily: 'GB'),
                    ),
                    Spacer(),
                    Image(
                      image: AssetImage('images/icon_share_bottomsheet.png'),
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                width: 340,
                height: 46,
                margin: EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.4),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Image(
                        image: AssetImage('images/icon_search.png'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'GB',
                            fontWeight: FontWeight.bold),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Search User',
                          hintStyle:
                              TextStyle(color: Colors.white, fontFamily: 'GB'),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            childCount: 14,
            (context, index) {
              return _getProfileItem(imageList[index], itemName[index]);
            },
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              mainAxisExtent: 100),
        ),
      ],
    );
  }

  Widget _getProfileItem(String imageName, String nameItem) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(imageName),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '$nameItem',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontFamily: 'GB',
          ),
        ),
      ],
    );
  }
}
