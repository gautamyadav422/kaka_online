import 'package:flutter/material.dart';
import 'package:kaka_online/Homepage.dart';
import 'package:kaka_online/LoginPage/constant.dart';
import 'package:kaka_online/LoginPage/introPage.dart';
import 'package:kaka_online/LoginPage/registration_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
  void initState() {
    // TODO: implement initState
    super.initState();
    shrePreference();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPresses,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Login Page"),
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
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Please enter your email address",
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
                    controller: passwordController,
                    decoration: InputDecoration(
                        hintText: "Please enter your Password",
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
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();

                      prefs.setString("email", emailController.text);
                      prefs.setString("password", passwordController.text);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext ctx) => MyHomePage()));
                      // final SharedPreferences shrepref = await SharedPreferences.getInstance();
                      // shrepref.getString('email',emailController.text);
                      // emailController.text.isEmpty
                      //     ? _validate = true
                      //     : Navigator.pushReplacement(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) => MyHomePage()));
                    },
                    child: Text("Login"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => RegistrationPage()),
                        (_) => false,
                      );
                    },
                    child: Text(
                      "Don't have account? Click Here",
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

  shrePreference() async {

      SharedPreferences prefs = await SharedPreferences.getInstance();
      if (prefs.getString("email") == null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext ctx) => LoginPage(),
          ),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext ctx) => MyHomePage(),
          ),
        );
      }
    }

}
