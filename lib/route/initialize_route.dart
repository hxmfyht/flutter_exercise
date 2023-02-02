import 'package:flutter/material.dart';
import 'package:flutter_exercise/home/home_page.dart';
import 'package:flutter_exercise/input_demo/input_demo_page.dart';
import 'package:flutter_exercise/scan_code/scan_code_page.dart';

import '../chat_bubble/chat_dubble_page.dart';

Map<String, WidgetBuilder> routes = {
  '/': (BuildContext context) => HomePage(),
  'chatBubble': (BuildContext context) => ChatDubblePage(),
  'inputDemo': (BuildContext context) => InputDemoPage(),
  "scanCode": (BuildContext context) => ScanCodePage()
};
