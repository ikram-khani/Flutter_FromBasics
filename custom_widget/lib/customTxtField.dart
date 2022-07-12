import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;
  final bool boolobscureText;
  bool pwd;
  bool isnumber;
  CustomTextField({
    this.label = "",
    this.hint = "",
    this.boolobscureText = false,
    this.pwd = false,
    this.isnumber = false,
  });
  //true or false

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        obscureText: boolobscureText,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            labelStyle: TextStyle(fontSize: 15),
            hintStyle: TextStyle(fontSize: 15),
            label: Text(label),
            hintText: hint,
            errorStyle: TextStyle(
              fontSize: 15,
            )),
        keyboardType: isnumber ? TextInputType.phone : TextInputType.text,
      ),
    );
  }
}
