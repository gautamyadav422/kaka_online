import 'package:flutter/material.dart';
import 'package:kaka_online/Homepage.dart';

class ContactPage extends StatefulWidget {


  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
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
            title: Text("Contact Details"),
            centerTitle: true,
          ),
          body: Image(image: AssetImage("assets/images/e1.png"),),
        ),
      ),
    );
  }
}
