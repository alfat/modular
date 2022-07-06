import 'package:flutter/material.dart';
import 'package:wtextfield/button.dart';
import 'package:wtextfield/textfield.dart';

class PopUp extends StatefulWidget {
  const PopUp({Key key}) : super(key: key);

  @override
  _PopUpUserIDState createState() => _PopUpUserIDState();
}

class _PopUpUserIDState extends State<PopUp> {
  TextEditingController userIdController = TextEditingController();
  FocusNode userIdFocus = FocusNode();

  TextEditingController passwordController = TextEditingController();
  FocusNode passwordFocus = FocusNode();

  String userId = '';
  String password = '';

  void validateForm() {
    showDialog(
        context: context, 
        builder: (BuildContext context) {
          return Text('data');
        }
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const Padding(padding: EdgeInsets.only(top: 30)),
                WideTextField(
                  inputType: TextInputType.text,
                  title: "User ID",
                  textEditingController: userIdController,
                  focusNode: userIdFocus,
                  onChanged: (value) {
                    userId = value;
                  },
                ),
                const Padding(padding: EdgeInsets.only(top: 5)),
                WideTextField(
                  obscureText: true,
                  inputType: TextInputType.visiblePassword,
                  title: "Password",
                  textEditingController: passwordController,
                  focusNode: passwordFocus,
                  onChanged: (value) {
                    password = value;
                  },
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                WideButton(
                  onPressed: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    // validateForm();
                  },
                  width: 200,
                  title: "Sign In",
                ),
          ]
        ),
      ),
    );
  }
}