import 'package:flutter/material.dart';
import 'package:logiin/pages/login.dart';
import 'package:logiin/pages/welcome.dart';
import 'package:logiin/pages/signup.dart';



void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: EditableText.debugDeterministicCursor,
      initialRoute: "/welcome",
      routes: {
    "/welcome": (context) => const welcome(),
    "/login": (context) => const login(),
    "/SignUP":(context) => const SignUP(),},
    );
  }
}
