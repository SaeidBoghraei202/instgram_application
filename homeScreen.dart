import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:inst/sharebottomsheet.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});

  @override
  var itemName = [
    'saeed',
    'ali',
    'mamad',
    'reza',
    'farzad',
    'ahmad',
    'mahsa',
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 23, 32),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 21, 23, 32),
        title: Container(
          child: Image.asset('images/moodinger_logo.png'),
          width: 128,
          height: 40,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                showModalBottomSheet(
                  barrierColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: DraggableScrollableSheet(
                        initialChildSize: 0.4,
                        minChildSize: 0.2,
                        maxChildSize: 0.7,
                        builder: (context, scrollController) {
                          return Sharebottomsheet(scrollController);
                        },
                      ),
                    );
                  },
                );
              },
              icon: Image(
                image: AssetImage('images/icon_direct.png'),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _getAppBar(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Column(
                    children: [
                      _getInformationUser('images/s$index.png'),
                      _getPostUser('images/p$index.png'),
                    ],
                  );
                },
                childCount: 7,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getAppBar() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Row(
            children: [
              index == 0
                  ? _getAddStory()
                  : _getStoryFollowing('images/s$index.png', itemName[index]),
            ],
          );
        },
      ),
    );
  }

  Widget _getAddStory() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 7),
          child: Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: Color(0xff1C1F2E),
              borderRadius: BorderRadius.circular(17),
              border: Border.all(color: Colors.white, width: 2),
              image: DecorationImage(
                image: AssetImage('images/icon_plus.png'),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Your Story',
          style: TextStyle(fontSize: 14, color: Colors.white, fontFamily: 'GB'),
        ),
      ],
    );
  }

  Widget _getStoryFollowing(String imageName, String itemName) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 3),
          child: Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: Color(0xff1C1F2E),
              borderRadius: BorderRadius.circular(17),
              border: Border.all(color: Color(0xffF35383), width: 2),
              image: DecorationImage(
                image: AssetImage(imageName),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          '$itemName',
          style: TextStyle(fontSize: 14, color: Colors.white, fontFamily: 'GB'),
        ),
      ],
    );
  }

  Widget _getInformationUser(String imageName) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: Color(0xff1C1F2E),
              borderRadius: BorderRadius.circular(17),
              border: Border.all(color: Color(0xffF35383), width: 2),
              image: DecorationImage(
                image: AssetImage(imageName),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(
                'Saeid Boghraei',
                style: TextStyle(
                    color: Colors.white, fontSize: 12, fontFamily: 'GB'),
              ),
              Text(
                'برنامه نویس موبایل',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'GB',
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Spacer(),
          Image.asset('images/icon_menu.png')
        ],
      ),
    );
  }

  Widget _getPostUser(String imageName) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: double.infinity,
        child: Container(
          width: 394,
          height: 380,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                top: 0,
                child: ClipRRect(
                  child: Image.asset(imageName),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Positioned(
                bottom: 20,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      width: 300,
                      height: 46,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(255, 255, 255, 0.5),
                            Color.fromRGBO(255, 255, 255, 0.2),
                          ],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Image(
                                image: AssetImage('images/icon_hart.png'),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                '2.6 k',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'GB'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image(
                                image: AssetImage('images/icon_comments.png'),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                '4.7 k',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'GB'),
                              ),
                            ],
                          ),
                          Image(
                            image: AssetImage('images/icon_share.png'),
                          ),
                          Image(
                            image: AssetImage('images/icon_save.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
