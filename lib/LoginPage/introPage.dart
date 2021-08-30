import 'package:flutter/material.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  List<Slide> slides = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides.add(Slide(


    ),);
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
