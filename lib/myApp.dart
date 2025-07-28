import 'package:flutter/material.dart';

import 'greeting_app.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Greeting App",
      home: GreetingApp(),

    );
  }
}
