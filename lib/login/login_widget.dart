import "package:flutter/material.dart";
import "package:untitled1/subwidgtes/LoginTextFieldWidget.dart";

class Login extends StatefulWidget{
  const Login({super.key});

  @override
  State<StatefulWidget> createState() => LoginWidget();


}

void _update(String str){}

class LoginWidget extends State<Login>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          padding: EdgeInsets.all(28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginText(text: "Email", submit: _update),
              LoginText(text: "Password", submit: _update),
              Container(
                padding: EdgeInsets.all(10),
                width: 300,
                child: Column(
                  children: [
                    OutlinedButton(onPressed: (){},
                        child: Text("Sign in")),
                    TextButton(onPressed: (){
                      Navigator.pushNamed(context, "/signup");
                    }, child: Text("Create Account"))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}