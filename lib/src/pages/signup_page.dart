import 'package:flutter/material.dart';
import 'package:food_delivery/src/pages/signin_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _toggleVisibility = true;
  bool _toggleConfirmVisibility = true;

  Widget _buildEmailTextField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Email",
        hintStyle: TextStyle(
          fontSize: 22,
          color: Color(0xFFBDC2CB),
        ),
      ),
    );
  }

  Widget _buildUsernameTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Username",
        hintStyle: TextStyle(
          fontSize: 22,
          color: Color(0xFFBDC2CB),
        ),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: TextStyle(
          fontSize: 22,
          color: Color(0xFFBDC2CB),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _toggleVisibility = !_toggleVisibility;
            });
          },
          icon: _toggleVisibility
              ? Icon(Icons.visibility_off)
              : Icon(Icons.visibility),
        ),
      ),
      obscureText: _toggleVisibility,
    );
  }

  Widget _buildConfirmPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Confirm Password",
        hintStyle: TextStyle(
          fontSize: 22,
          color: Color(0xFFBDC2CB),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _toggleConfirmVisibility = !_toggleConfirmVisibility;
            });
          },
          icon: _toggleConfirmVisibility
              ? Icon(Icons.visibility_off)
              : Icon(Icons.visibility),
        ),
      ),
      obscureText: _toggleConfirmVisibility,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      _buildUsernameTextField(),
                      SizedBox(
                        height: 20,
                      ),
                      _buildEmailTextField(),
                      SizedBox(
                        height: 20,
                      ),
                      _buildPasswordTextField(),
                      SizedBox(
                        height: 20,
                      ),
                      _buildConfirmPasswordTextField(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              Divider(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xFFBDC2CB),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => SignInPage()));
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
