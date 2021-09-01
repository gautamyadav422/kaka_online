import 'package:flutter/material.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';


import 'package:kaka_online/LoginPage/Login.dart';

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
    slides.add(
      Slide(
        title: "Safety Pandemic",
        description:
            "“Better to wear a mask than a ventilator; better to stay at home than in an ICU.”",
        pathImage: "assets/images/mask.png",
        backgroundColor: Color(0xfff5a623),
      ),
    );
    slides.add(
      Slide(
        title: "Online Kaka",
        description:
            "Online Kaka is a localised online food & meat delivery including chicken meat, mutton meat and fish meat platform.",
        pathImage: "assets/images/logo.png",
        backgroundColor: Color(0xff9932CC),
      ),
    );
    slides.add(
      Slide(
        title: " favourite cuisine",
        description:
            "If I have free time, I want to go to the beach, walk around a shopping mall, go grocery shopping. ...",
        pathImage: "assets/images/grow.png",
        backgroundColor: Color(0xff203152),
      ),
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = [];
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            margin: EdgeInsets.only(bottom: 160, top: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  currentSlide.pathImage,
                  matchTextDirection: true,
                  height: 60,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    currentSlide.title,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Text(
                    currentSlide.description,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      height: 1.5,
                    ),
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                  margin: EdgeInsets.only(
                    top: 15,
                    left: 20,
                    right: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      backgroundColorAllSlides: Colors.black12,
      renderSkipBtn: Text("Skip"),
      renderNextBtn: Text(
        "Next",
        style: TextStyle(color: Colors.green[700]),
      ),
      renderDoneBtn: Icon(
        Icons.arrow_forward_ios,
        size: 35,
      ),
      colorDot: Colors.white,
      // colorDoneBtn: Colors.white,
      colorActiveDot: Colors.white,
      sizeDot: 8.0,
      typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,
      listCustomTabs: this.renderListCustomTabs(),

      scrollPhysics: BouncingScrollPhysics(),
      hideStatusBar: false,
      // shouldHideStatusBar: false,
      onDonePress: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => LoginPage(),
        ),
      ),
    );
  }
}
