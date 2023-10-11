import 'package:flutter/material.dart';
import 'Bmi.dart';
void main(){
  runApp(Home());
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Bmi(),
      debugShowCheckedModeBanner: false,
    );
  }
}