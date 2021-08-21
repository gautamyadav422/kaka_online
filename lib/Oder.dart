import 'package:flutter/material.dart';

import 'Homepage.dart';

class Odermain extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Oder Details"),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
          },
          child: Text(
            "Your Oder is Placed",style: TextStyle(color: Colors.lightGreen,fontWeight: FontWeight.bold,fontSize: 32),
          ),
        ),
      ),
    );
  }
}
