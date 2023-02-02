import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:images_picker/images_picker.dart';
import 'package:scan/scan.dart';

class ScanCodePage extends StatefulWidget {
  const ScanCodePage({Key? key}) : super(key: key);

  @override
  State<ScanCodePage> createState() => _ScanCodePageState();
}

class _ScanCodePageState extends State<ScanCodePage> {
  ScanController scanController = ScanController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: ScanView(
                  controller: scanController,
                  onCapture: (data) {
                    print("扫码结果=====${data}");
                  }),
            ),
          ),
          Container(
              child: Row(children: [
            TextButton(
                onPressed: () {
                  scanController.toggleTorchMode();
                },
                child: Text("闪光灯")),
            TextButton(
                onPressed: () async {
                  List<Media>? res = await ImagesPicker.pick();
                  if (res != null) {
                    String? scanData = await Scan.parse(res[0].path);
                    if (scanData != null) {
                      print("scanData====>$scanData");
                    }
                  } else {
                    print("选择的图片有问题");
                  }
                },
                child: Text("相册"))
          ]))
        ],
      )
    );
  }
}
