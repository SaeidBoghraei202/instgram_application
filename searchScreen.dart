import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  var itemName = [
    'All',
    'Account',
    'Hashtag',
    'Caption',
    'Story',
    'Comment',
    'Demo',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Column(
          children: [
            _getContentHeader(),
            Expanded(child: _getCoverExplover()),
          ],
        ),
      ),
    );
  }

  Widget _getContentHeader() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: 394,
            height: 46,
            decoration: BoxDecoration(
              color: Color.fromRGBO(39, 43, 64, 1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('images/icon_search.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'GB',
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Search ...',
                        hintStyle:
                            TextStyle(color: Colors.white, fontFamily: 'GB'),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image(
                    image: AssetImage('images/icon_scan.png'),
                  ),
                ],
              ),
            ),
          ),
        ),
        _getItemBuilder(),
      ],
    );
  }

  Widget _getCoverExplover() {
    return GridView.custom(
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        pattern: [
          QuiltedGridTile(2, 1),
          QuiltedGridTile(2, 2),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(2, 2),
          QuiltedGridTile(2, 1),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) => Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'images/item$index.png',
              ),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Widget _getContentBox(String itemName) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
      child: Container(
        alignment: AlignmentDirectional.center,
        width: 60,
        height: 23,
        decoration: BoxDecoration(
          color: Color(0xff272B40),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          '$itemName',
          style: TextStyle(fontSize: 10, color: Colors.white, fontFamily: 'GM'),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _getItemBuilder() {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        itemCount: itemName.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Row(
            children: [
              _getContentBox(itemName[index]),
            ],
          );
        },
      ),
    );
  }

  Widget _getGridSliver() {
    return GridView.custom(
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        repeatPattern: QuiltedGridRepeatPattern.inverted,
        pattern: [
          QuiltedGridTile(2, 2),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 2),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        (context, index) => Column(
          children: [
            Image.asset('images/item$index.png'),
          ],
        ),
      ),
    );
  }
}
