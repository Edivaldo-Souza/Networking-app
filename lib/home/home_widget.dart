import "package:flutter/material.dart";
import "package:untitled1/main.dart";

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageWidget();
}

class HomePageWidget extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
              width: 300,

              padding: EdgeInsets.all(32),
              child: Column(
                children: [
                  Text("Login",
                  style:TextStyle(color:Colors.white,fontSize: 30)),
                  TextField(
                    decoration: InputDecoration(label:Text("Email")),
                  ),
                  TextField(
                    decoration: InputDecoration(label:Text("Password")),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(onPressed: (){}, child: Text("Entrar")),
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}