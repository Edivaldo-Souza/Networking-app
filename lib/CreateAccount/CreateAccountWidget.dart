
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/subwidgtes/LoginTextFieldWidget.dart';

class CreateAccount extends StatefulWidget{
  @override
  CreateAccountWidget createState() => CreateAccountWidget();

}

class CreateAccountWidget extends State<CreateAccount>{
   String username = "";
   String email = "";
   String phone = "";
   String password = "";

   void _update(){
     Map<String,dynamic>  req = {
        "username": username,
        "email": email,
        "phone":phone,
        "password":password
      };
      print(req);
  }

  void _updateUsername(String newName){ setState((){username = newName;}); }
   void _updateEmail(String newEmail){ setState((){email = newEmail;}); }
   void _updatePhone(String newPhone){ setState((){phone = newPhone;}); }
   void _updatePassword(String newPassword){ setState((){password = newPassword;}); }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.only(top: 20),
              child: BackButton()),
          Center(
            child: Container(
              width: 300,
              padding: EdgeInsets.all(28),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoginText(text: "Username", submit: _updateUsername),
                  LoginText(text: "Email", submit: _updateEmail,),
                  LoginText(text: "Phone", submit: _updatePhone,),
                  LoginText(text: "Password", submit: _updatePassword,),
                  LoginText(text: "Confirm Password",submit:_updatePassword),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 300,
                    child: Column(
                      children: [
                        OutlinedButton(onPressed: _update,
                            child: Text("Sign Up")),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}