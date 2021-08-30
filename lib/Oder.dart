import 'package:flutter/material.dart';

import 'Homepage.dart';

class Odermain extends StatefulWidget {


  @override
  _OdermainState createState() => _OdermainState();
}

class _OdermainState extends State<Odermain> {
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
        ),
      ),
    );
  }
}
