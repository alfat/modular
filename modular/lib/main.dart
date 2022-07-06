import 'package:flutter/material.dart';
import 'package:modular/component/wbutton.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:wtextfield/popup.dart';

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
      routes: <String, WidgetBuilder> {
        "popup" : (BuildContext context) => const PopUp(),
      }
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
                 const Padding(padding: EdgeInsets.only(top: 20)),
                WButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed("popup");
                  },
                  width: 200,
                  title: "Redirect Pages",
                ),
          ],
        ),
      ),
    );
  }
}
