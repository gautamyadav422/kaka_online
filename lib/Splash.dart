import 'package:flutter/material.dart';
import 'package:kaka_online/Homepage.dart';
import 'package:kaka_online/LoginPage/introPage.dart';

class SpashScreen extends StatefulWidget {
  @override
  _SpashScreenState createState() => _SpashScreenState();
}

class _SpashScreenState extends State<SpashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => IntroPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image(
            image: AssetImage("assets/images/a2.png"),
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
