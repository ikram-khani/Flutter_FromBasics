import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(home: MyForm()));
}

class MyForm extends StatefulWidget {
  MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  var _formkey = GlobalKey<FormState>();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My FORM"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      label: Text("Name"),
                      hintText: "Enter your Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                  validator: (var msg) {
                    if (msg!.isEmpty) {
                      return "Enter Your name please";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      label: Text("Mobile NO"),
                      hintText: "Enter your mobile no",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                  validator: (var value) {
                    if (value!.isEmpty) {
                      return "Enter Your Mobile no please";
                    }
                    if (value.length != 11) {
                      return "Please enter valid mobile no";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                      label: Text("Password"),
                      hintText: "Enter your Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                  validator: (var value) {
                    if (value!.isEmpty) {
                      return "Enter Your Password please";
                    }
                    if (value.length < 8) {
                      return "Password must be atleast 8 characters";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  controller: confirmPasswordController,
                  decoration: InputDecoration(
                      label: Text("Confirm Password"),
                      hintText: "Confirm your Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                  validator: (var value) {
                    if (value !=
                        confirmPasswordController.value.text) {
                      return "Password doesn't match";
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        onPressed: () {
          _formkey.currentState!.validate();
        },
      ),
    );
  }
}
