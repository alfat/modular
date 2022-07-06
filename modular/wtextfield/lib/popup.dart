import 'package:flutter/material.dart';
import 'package:custom_alert_box/custom_alert_box.dart';

class PopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Modular"),
      ),
      body: Center(
        child: Text(
            'to show custom alert box please click floating action button.'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await CustomAlertBox.showCustomAlertBox(
              context: context,
              willDisplayWidget: Container(
                child: Text('My custom alert box, used from example!!'),
              ));
        },
        tooltip: 'Show Custom Alert Box',
        child: Icon(Icons.message),
      ),
    );
  }
}