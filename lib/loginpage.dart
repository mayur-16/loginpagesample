import 'dart:async';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loginpagesample/services/Apiservices.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  SharedPreferences loginInfo;
  bool alreadyloggedin;
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  bool showpasswrd = false;
  bool _usernameinvalid = false;
  bool _passwordinvalid = false;
  TextEditingController usernamevalue = TextEditingController();
  TextEditingController passwordvalue = TextEditingController();

  void isAlreadyloggedIn() async {
    loginInfo = await SharedPreferences.getInstance();
    alreadyloggedin = (loginInfo.getBool('loggedIn') ?? false);
    if (alreadyloggedin) {
      String loginInfoempno = loginInfo.getString('empno');
      Navigator.pushReplacementNamed(context, '/home',
          arguments: {'empnopassed': loginInfoempno});
    }
  }

  @override
  void initState() {
    super.initState();
    isAlreadyloggedIn();
    Timer(Duration(seconds: 3), () {
      setState(() {});
    });
  }

  @override
  void dispose() {
    usernamevalue.dispose();
    passwordvalue.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final usernameField = TextField(
      obscureText: false,
      style: style,
      maxLength: 10,
      controller: usernamevalue,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
          prefixIcon: Icon(Icons.account_box_rounded),
          labelText: 'Username',
          hintText: 'Enter Username',
          errorText: _usernameinvalid ? 'Username invalid' : null,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(24.0))),
    );

    final passwordField = TextField(
      obscureText: showpasswrd,
      maxLength: 20,
      style: style,
      controller: passwordvalue,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
          labelText: 'Password',
          errorText: _passwordinvalid ? 'Password invalid' : null,
          prefixIcon: Icon(Icons.lock_outline_rounded),
          suffixIcon: IconButton(
            icon: Icon(Icons.remove_red_eye),
            onPressed: () {
              setState(() {
                showpasswrd = !showpasswrd;
              });
            },
            color: showpasswrd ? Colors.blue : Colors.grey.shade500,
          ),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(24.0))),
    );

    return Material(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/company_label.jpeg"),
              Image.asset("assets/carrier_logo_login_background.jpg"),
              SizedBox(
                height: 20,
              ),
              usernameField,
              passwordField,
              TextButton(
                onPressed: () {},
                child: Text("Forgot password?"),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.deepPurple),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        _validationandlogin();
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.6,
                        ),
                      ),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 10, horizontal: 40)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Create new account?"),
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all(Colors.deepPurple),
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

  void _validationandlogin() async {
    setState(() {
      _usernameinvalid = false;
      _passwordinvalid = false;
    });
    String username = usernamevalue.text.trim();
    //String username ="a";
    String password = passwordvalue.text.trim();
    //String password = "IWONTSAY";
    if (username.isEmpty) {
      print("please enter username");
      Fluttertoast.showToast(msg: "please enter username");
      return;
    }
    if (password.isEmpty) {
      print("please enter username");
      Fluttertoast.showToast(msg: "please enter password");
      return;
    }

    print('$username and $password');
    try {
      MyApi.getemplogindetails(username: username).then((value) {
        if (value != null) {
          dynamic loginresponse = value[0];
          // print("loginresponse is $value");
          var response_password = (loginresponse)['PASSWORD'];
          print(response_password);
          String responsepassword_decoded = '';
          response_password.runes.forEach((int singlechar) {
            String chardecoded = String.fromCharCode(singlechar - 10);
            print(chardecoded);
            responsepassword_decoded += chardecoded;
          });
          print("password decoded =$responsepassword_decoded");
          if (password == responsepassword_decoded) {
            String response_empno = (loginresponse)['EMPNO'];
            print(response_empno);
            if (response_empno == "null" || response_empno == null) {
              Fluttertoast.showToast(msg: "Employee is not\n registered");
              return;
            } else {
              Fluttertoast.showToast(msg: "login successfull");
              loginInfo.setBool('loggedIn', true);
              loginInfo.setString('empno', response_empno);
              Navigator.pushReplacementNamed(context, '/home',
                  arguments: {'empnopassed': response_empno});
            }
          } else {
            setState(() {
              _passwordinvalid = true;
            });
            Fluttertoast.showToast(msg: "password invalid \nTry again");
          }
        } else {
          Fluttertoast.showToast(msg: "username not found\nplease try again");
        }
      });
    } on SocketException catch (_) {
      Fluttertoast.showToast(msg: "Internet is disabled\nplease turn it On");
    } on FormatException catch (_) {
      setState(() {
        _usernameinvalid = true;
      });
      Fluttertoast.showToast(msg: "username not found\nplease try again");
    } on TimeoutException catch (e) {
      Fluttertoast.showToast(
          msg: "Yateem Ac server has gone down\nPlease try again",
          gravity: ToastGravity.CENTER);
      print('Timout exception $e');
      return;
    } on Error catch (e) {
      print('username not found $e');
    }
  }
}
