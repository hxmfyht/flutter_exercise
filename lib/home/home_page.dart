import 'package:flutter/material.dart';
import '../chat_bubble/chat_dubble_page.dart';

import '../scan_code/scan_code_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => ChatDubblePage()));
                  },
                  child: Text("聊天气泡")),
              ElevatedButton(
                onPressed: () {
                    Navigator.of(context).pushNamed('inputDemo');
                },
                child: Text("输入框Demo"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('scanCode');
                },
                child: Text("扫码"),
              )
            ],
          )),
    );
  }
}
