import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CreatPost extends StatelessWidget {
  const CreatPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Column(
          children: [
            _getHeader(),
            _getPostSelect(),
            Expanded(child: _getCoverExplover()),
            Container(
              width: 428,
              height: 83,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(15), left: Radius.circular(15)),
                color: Color(0xff272B40),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 26, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Draft',
                          style: TextStyle(
                            color: Color(0xffF35383),
                            fontSize: 16,
                            fontFamily: 'GB',
                          ),
                        ),
                        Text(
                          'Gallery',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'GB',
                          ),
                        ),
                        Text(
                          'Take',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'GB',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getCoverExplover() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.custom(
        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          pattern: [
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
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
                  'images/q$index.png',
                ),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }

  Widget _getHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        width: 394,
        height: 26,
        child: Row(
          children: [
            Row(
              children: [
                Text(
                  'Post',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'GB',
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 12,
                ),
                Image.asset('images/icon_arrow_down.png'),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Text(
                  'Next',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'GB',
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 12,
                ),
                Image.asset('images/icon_arrow_right_box.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _getPostSelect() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: 450,
        height: 375,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/c.png'),
          ),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
