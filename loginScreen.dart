import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailFocus.addListener(() {
      setState(() {});
    });
    passwordFocus.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            top: 50,
            child: _getImageItem(),
          ),
          _getLoginItem(),
        ],
      ),
    );
  }

  Widget _getImageItem() {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/rocket.png'),
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(50, 58, 153, 1),
                  Color.fromRGBO(249, 139, 252, 1),
                ],
              ),
            ),
          ),
        ),
        Expanded(child: Container()),
      ],
    );
  }

  Widget _getLoginItem() {
    return Column(
      children: [
        Expanded(child: Container()),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20)),
              color: Color(0xff1C1F2E),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign in to  ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'GB'),
                      ),
                      Container(
                        child: Image.asset('images/moodinger_logo.png'),
                        width: 102,
                        height: 25,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    _getTextFildEmail(),
                    SizedBox(
                      height: 35,
                    ),
                    _getTextFildPassword(),
                    SizedBox(
                      height: 35,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(209, 46),
                        backgroundColor: Color(0xffF35383),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'GB',
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have an account ?  ',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontFamily: 'GB'),
                        ),
                        Text(
                          'Sign up',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: 'GB'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _getTextFildEmail() {
    return SizedBox(
      width: 340,
      height: 46,
      child: TextField(
        focusNode: emailFocus,
        style: TextStyle(color: Colors.white, fontSize: 15),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffF35383), width: 2),
              borderRadius: BorderRadius.circular(15)),
          labelText: 'Email',
          labelStyle: TextStyle(
              color: emailFocus.hasFocus ? Color(0xffF35383) : Colors.white,
              fontSize: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              width: 2,
              color: Color.fromRGBO(197, 197, 197, 1),
            ),
          ),
        ),
        onChanged: (value) {
          // Handle text changes
        },
      ),
    );
  }

  Widget _getTextFildPassword() {
    return SizedBox(
      width: 340,
      height: 46,
      child: TextField(
        focusNode: passwordFocus,
        style: TextStyle(color: Colors.white, fontSize: 15),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Color.fromRGBO(243, 83, 131, 1), width: 2),
              borderRadius: BorderRadius.circular(15)),
          labelText: 'Password',
          labelStyle: TextStyle(
              color: passwordFocus.hasFocus ? Color(0xffF35383) : Colors.white,
              fontSize: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              width: 2,
              color: Color.fromRGBO(197, 197, 197, 1),
            ),
          ),
        ),
        onChanged: (value) {
          // Handle text changes
        },
      ),
    );
  }

  @override
  void dispose() {
    emailFocus.dispose();
    passwordFocus.dispose();
    super.dispose();
  }
}
