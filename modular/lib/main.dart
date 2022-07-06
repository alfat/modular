import 'package:flutter/material.dart';
import 'package:wtextfield/wtextfield.dart';
import 'package:wbutton/wbutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController userIdController = TextEditingController();
  FocusNode userIdFocus = FocusNode();

   TextEditingController passwordController = TextEditingController();
  FocusNode passwordFocus = FocusNode();
  
  String userId = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
               WTextField(
                  inputType: TextInputType.text,
                  title: "User ID",
                  textEditingController: userIdController,
                  focusNode: userIdFocus,
                  onChanged: (value) {
                    userId = value;
                  },
                ),
                const Padding(padding: EdgeInsets.only(top: 5)),
                WTextField(
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
                WButton(
                  onPressed: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    // validateForm();
                  },
                  width: 200,
                  title: "Sign In",
                ),
          ],
        ),
      ),
    );
  }
}
