import 'package:floginlogout/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:floginlogout/constants.dart';
import 'package:floginlogout/screens/register_view.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatelessWidget {
  TextEditingController usernameController = TextEditingController ();
  TextEditingController passwordController = TextEditingController ();
  String username = "" , password = "" ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.primaryColor,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _iconLogin(),
                  _titleDescription(),
                  _textField(),
                  _buildButton(context),
                ],
              ),
            ),
          ],
      ),
    ),


    );
  }

  Widget _iconLogin(){
    return Image.asset(
      "assets/images/icon_login.png",
      width:150.0,
      height:150.0,
    );
  }

  Widget _titleDescription(){
    return Column(
      children: <Widget>[
        Padding(
          padding:EdgeInsets.only(top: 16.0),
        ),
        Text(
          "Login into app",
          style:TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        Padding(
          padding:EdgeInsets.only(top:12.0),
        ),
        Text(
          "Masukan Username Dan Password",
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.white,
          ),
        textAlign: TextAlign.center,
        ),
      ],
    );
  }
  Widget _textField(){
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top:12.0),
        ),
        TextFormField(
          controller: usernameController,
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width:1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 3.0,
              ),
            ),
            hintText: "Username",
            hintStyle: TextStyle(color: ColorPalette.hintColor),
          ),
          style: TextStyle(color: Colors.white),
          autofocus: false,
        ),
        Padding(padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          controller: passwordController,
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.5,
              ),
            ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 3.0,
            ),
          ),
          hintText: "Password",
          hintStyle: TextStyle(color: ColorPalette.hintColor),
          ),
          style: TextStyle(color: Colors.white),
          obscureText: true,
          autofocus: false,
        ),
      ],
    );
  }

  Widget _buildButton(BuildContext context){
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            width: double.infinity,
            child: Text(
              "Login",
              style: TextStyle(color: ColorPalette.primaryColor),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
            ),

          ),
          onTap: (){
              username = usernameController.text;
              password = passwordController.text;
              print("USernamenya "+username);
              print("Passwordnya "+password);
              if(username=="admin"&&password=="admin"){
                print("berhasil");
                Navigator.pushNamed(context, HomePage.routeName);
              }else{
                print("gagal");
                Fluttertoast.showToast(
                    msg: "Payah Gagal Login Kawan",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.pinkAccent,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              }
          },
        ),
        Padding(padding: EdgeInsets.only(top: 16.0),),
        Text(
          "Or",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
          ),
        ),
        FlatButton(
          child: Text(
            "Register",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: (){
            Navigator.pushNamed(context, RegisterPage.routeName);
          },
        ),
      ],
    );
  }
}

