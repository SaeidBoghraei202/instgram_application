import 'package:flutter/material.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff1C1F2E),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/pattern1.png"),
              repeat: ImageRepeat.repeat,
            ),
          ),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Center(
                child: Image.asset(
                  'images/logo_splash.png',
                  width: 300,
                  height: 200,
                ),
              ),
              Positioned(
                bottom: 50,
                child: Column(
                  children: [
                    Text(
                      'From',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'ExpertFlutter',
                      style: TextStyle(color: Colors.blue, fontSize: 19),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
