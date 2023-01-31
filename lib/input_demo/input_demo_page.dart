import 'package:flutter/material.dart';
import 'package:flutter_exercise/input_demo/inputbox_widget.dart';

class InputDemoPage extends StatelessWidget {
  const InputDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: InputBoxWidget(
            body: Container(),
            callback: (String a) {},
          )),
        ],
      ),
    );
  }
}
