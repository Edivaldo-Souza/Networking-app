
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginText extends StatefulWidget{
  final Function(String) submit;
  final String text;

  @override
  LoginTextFieldWidget createState() => LoginTextFieldWidget(text: text);

  LoginText({required this.submit, required this.text});
}

class LoginTextFieldWidget extends State<LoginText>{
  final String text;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: TextField(
        controller: _controller,
          onChanged: widget.submit(_controller.text),
          decoration: InputDecoration(
              hintText: this.text,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
              ))
      ),
    );

  }
  LoginTextFieldWidget({required this.text});
}
