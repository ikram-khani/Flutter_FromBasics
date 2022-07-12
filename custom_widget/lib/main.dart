import 'package:flutter/material.dart';
import 'customTxtField.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "MY FORM",
    theme: ThemeData.dark(),
    home: MyForm(),
  ));
}

class MyForm extends StatefulWidget {
  MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Form"),
      ),
      body: Form(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomTextField(
            hint: "Enter Your Name",
            label: "Name",
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomTextField(
            hint: "Enter Your Email Address",
            label: "Email",
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomTextField(
            hint: "Enter Your MobileNO",
            label: "Mobile No",
            isnumber: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomTextField(
            pwd: true,
            boolobscureText: true,
            hint: "Enter Your Password",
            label: "Password",
          ),
        )
      ])),
    );
  }
}
