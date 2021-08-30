import 'package:flutter/material.dart';
import 'package:kaka_online/Homepage.dart';

class AboutPages extends StatefulWidget {
  @override
  _AboutPagesState createState() => _AboutPagesState();
}

class _AboutPagesState extends State<AboutPages> {
  Future<bool> _navigatoHome(){
    return  Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MyHomePage()));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: _navigatoHome,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "About Us",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Wrap(
                  children: [
                    Image(
                      image: AssetImage("assets/images/a2.png"),
                    ),

                    Text(
                      "Lucknow, the city of Nawabs, has been renowned for its rich culture and traditions that have passed on from generation to generation over centuries. The Lucknowi ‘tehzeeb’ and sophistication can be experienced in various forms, but none more delicious and dear to the food loving Lucknowites, than its unique cuisine. It draws its distinctive taste, from the kitchens of the Royal Mughals, Nawabs and innovative people."
                      "The  melt-in-your mouth Galwati Kababs, or the aromatic Biryani , enticing Chaat, the savoury Kulche Nahari, Soft Pasanda, delightful Malai ki Gilori, Sheermal, Kulfi, Paan and the list is endless."
                      "While the traditional cuisine has retained its popularity, Lucknow has also made way for and accepted cuisine from other parts of India and the world with open arms; thus becoming a perfect blend of the old world charm and a growing modern metropolitan city. The scintillating aroma from the eateries of Chowk, Nakkhas, Aminabad, Hazratganj is hard to resist. With bakeries, fast food chains, and restaurants serving local and exotic foods abound, Lucknow is indeed the perfect gastronomic experience.",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
