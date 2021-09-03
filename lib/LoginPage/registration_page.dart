import 'package:flutter/material.dart';

import 'package:kaka_online/LoginPage/Login.dart';
import 'package:kaka_online/LoginPage/constant.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController emailController1 = TextEditingController();
  TextEditingController passwordController1 = TextEditingController();
  TextEditingController cPasswordController1 = TextEditingController();
  bool _validate = false;

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
    return WillPopScope(
      onWillPop: _onBackPresses,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Register Page"),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  CircleAvatar(
                    radius: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset("assets/images/a2.png"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController1,
                    decoration: InputDecoration(
                      labelText: 'Enter the Email id',
                      errorText:
                      _validate ? 'Please enter your email address' : null,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xFF054715), width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xFF054715), width: 3.0),
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: passwordController1,
                    decoration: InputDecoration(
                        labelText: 'Enter the Password',
                        errorText:
                        _validate ? 'Please enter your Password' : null,
                        // errorText: _validate ? 'Password Can\'t Be Empty' : null,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFF054715), width: 2.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFF054715), width: 3.0),
                        ),
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: cPasswordController1,
                    decoration: InputDecoration(
                        labelText: 'Enter the Password',
                        errorText:
                        _validate ? 'Please enter your Password' : null,
                        // errorText: _validate ? 'Password Can\'t Be Empty' : null,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFF054715), width: 2.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xFF054715), width: 3.0),
                        ),
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      emailController1.text.isEmpty
                          ? _validate = true
                          : Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginPage()));
                    },
                    child: Text("Register"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => LoginPage()),
                            (_) => false,
                      );
                    },
                    child: Text(
                      "Already have? Click Here",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
