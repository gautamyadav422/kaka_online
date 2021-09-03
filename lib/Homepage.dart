import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kaka_online/Drawer.dart';
import 'package:kaka_online/LoginPage/Login.dart';
import 'package:kaka_online/LoginPage/alerts.dart';
import 'package:kaka_online/Oder.dart';
import 'package:kaka_online/PagesDrawer/Contact.dart';
import 'package:kaka_online/list.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<bool> _onBackPresses() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Do you really want to exit the app"),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text("No"),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text("Yes"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: _onBackPresses,
        child: Scaffold(
            drawer: DrawerPage(),
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.green),
              title: Image(
                image: AssetImage("assets/images/a1.png"),
                height: 80,
              ),
              centerTitle: true,
              backgroundColor: Colors.black87,
              actions: [
                GestureDetector(
                  onTap: () {
                    launch("tel://+91 9930782439");
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(Icons.add_ic_call),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    final action = await AlertDialogs.yesCancelDialog(
                        context, 'Logout', 'Are you sure want to logout');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(Icons.logout),
                  ),
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  MainList(),
                  Container(
                    child: Column(
                      children: [
                        MainContainer(
                            image: "assets/images/a21.jpg",
                            titleText: "Alamgir Hotel",
                            subTitle:
                                "Mughlai, Kebabs, Biryani Naaz Cinema Road,Aminabad Lucknow UP 226018",
                            icon: Icons.star,
                            rating: "3.8",
                            minOrder: "MIN-ORDER: ₹99",
                            buttonText: "open"),
                        MainContainer(
                            image: "assets/images/d4.jpg",
                            titleText: "Celebrations By Onlinekaka",
                            subTitle:
                                "Flowers, cakes, Hazratganj, Lucknow UP-226001",
                            icon: Icons.star,
                            rating: "5.0",
                            minOrder: "MIN-ORDER: ₹99",
                            buttonText: "open"),
                        MainContainer(
                            image: "assets/images/d2.jpeg",
                            titleText: "Mubeens",
                            subTitle: "Akbari Gate,Chowk Lucknow UP 226003",
                            icon: Icons.star,
                            rating: "4.8",
                            minOrder: "MIN-ORDER: ₹99",
                            buttonText: "open"),
                        MainContainer(
                            image: "assets/images/d3.png",
                            titleText: "Shabaan Tikka",
                            subTitle:
                                "Mughlai, Kebabs, Biryani Naaz Cinema Road,Aminabad Lucknow UP 226018",
                            icon: Icons.star,
                            rating: "4.1",
                            minOrder: "MIN-ORDER: ₹99",
                            buttonText: "open"),
                        MainContainer(
                            image: "assets/images/d4.jpg",
                            titleText: "Tunday Kababi",
                            subTitle:
                                "Mughlai, Kebabs, Biryani Naaz Cinema Road,Aminabad Lucknow UP 226018",
                            icon: Icons.star,
                            rating: "3.8",
                            minOrder: "MIN-ORDER: ₹99",
                            buttonText: "open"),
                        MainContainer(
                            image: "assets/images/d5.png",
                            titleText: "OnlineKaka",
                            subTitle:
                                "Mughlai, Kebabs, Biryani Naaz Cinema Road,Aminabad Lucknow UP 226018",
                            icon: Icons.star,
                            rating: "5.0",
                            minOrder: "MIN-ORDER: ₹99",
                            buttonText: "open"),
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }

  Widget MainContainer(
      {String image,
      String titleText,
      String subTitle,
      IconData icon,
      String rating,
      String minOrder,
      String buttonText}) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Odermain()));
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 208,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(5),
            // color: Colors.red
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(image),
                      radius: 40,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              titleText,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            Text(
                              subTitle,
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 2,
                  width: 330,
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Icon(
                      icon,
                      size: 20,
                      color: Colors.amberAccent,
                    ),
                    Text(
                      rating,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.amberAccent,
                          fontSize: 20),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(minOrder),
                    SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green)),
                      onPressed: () {},
                      child: Text(buttonText),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
