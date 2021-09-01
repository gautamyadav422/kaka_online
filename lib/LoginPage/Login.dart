import 'package:flutter/material.dart';
import 'package:kaka_online/Homepage.dart';
import 'package:kaka_online/LoginPage/registration_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
          backgroundColor: Color(0xFFFCEEE5),
          appBar: AppBar(
            title: Text('Login Page'),
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
                TextButton(
                  onPressed: () {
                    //TODO FORGOT PASSWORD SCREEN GOES HERE
                  },
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => MyHomePage()));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => RegistrationPage()),
                      (_) => false,
                    );
                  },
                  child: Text(
                    "Dont't have a account? Click Here",
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
