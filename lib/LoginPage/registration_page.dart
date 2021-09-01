import 'package:flutter/material.dart';

import 'package:kaka_online/LoginPage/Login.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFCEEE5),
        appBar: AppBar(
          title: Text('Ragistration Page'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 150,
                    /*decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50.0)),*/
                    child: CircleAvatar(
                        radius: (52),
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset("assets/images/a2.png"),
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Enter valid email id as abc@gmail.com'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm-Password',
                      hintText: 'Enter secure Confirm-password'),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => LoginPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => LoginPage()
                    ),
                        (_) => false,
                  );
                },
                child: Text(
                  'Already have account? Click Here',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
