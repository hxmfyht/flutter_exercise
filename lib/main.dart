import 'package:flutter/material.dart';
import 'package:flutter_exercise/route/initialize_route.dart';
void main(){
  runApp(FlutterExercise());
}

class FlutterExercise extends StatelessWidget {
  const FlutterExercise({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      initialRoute: "/",
    );
  }
}




