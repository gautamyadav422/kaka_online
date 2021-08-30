import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class MainList extends StatefulWidget {
  @override
  _MainListState createState() => _MainListState();
}

class _MainListState extends State<MainList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Marquee(
            text: "DELIVERY TIMINGS- 11AM TO 11PM | ORDER ONLINE NOW!",
            style: TextStyle(fontWeight: FontWeight.bold),
            pauseAfterRound: Duration(seconds: 1),
            showFadingOnlyWhenScrolling: true,
          ),
        ),
        Stack(
          children: [
            Container(
              height: 270,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/a3.jpg"),
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.darken),
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 25,
              child: Text(
                "Order from restaurants you love!",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 150,
              left: 35,
              child: Container(
                child: Column(
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Eg - Vishal, Khand"),
                      ElevatedButton(
                        onPressed: (){},
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.black)),
                        child: Row(

                          children: [
                            Icon(Icons.location_pin,color: Colors.white,),
                            Text("Locate me",style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      )
                    ],
                  )
                  ],
                ),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),

              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Featured Restaurant",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
