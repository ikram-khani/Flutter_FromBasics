import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint; //not valid condition
  String errorMessage;
  final bool boolobscureText;
  bool notvalid;
  bool pwd;
  bool isnumber;
  CustomTextField(
      {this.label = "",
      this.hint = "",
      this.errorMessage = "",
      this.boolobscureText = false,
      this.pwd = false,
      this.isnumber = false,
      this.notvalid = false});
  //true or false

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          obscureText: boolobscureText,
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              labelStyle: TextStyle(fontSize: 15),
              hintStyle: TextStyle(fontSize: 15),
              label: Text(label),
              hintText: hint,
              errorText: notvalid ? errorMessage : null,
              errorStyle: TextStyle(
                fontSize: 15,
              )),
          keyboardType: isnumber ? TextInputType.phone : TextInputType.text,
          validator: (value) {
            if (pwd = false) {
              if (value!.isEmpty) {
                notvalid = true;
              }
            }
            if (pwd = true) {
              if (value!.length < 8) {
                notvalid = true;
                errorMessage = "Password must be atleast 8 characters";
              }
            }
          }),
    );
  }
}
