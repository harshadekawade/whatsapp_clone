import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/utility.dart';
import 'package:whatsapp_ui_clone/whatsapp_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp clone',
      theme: ThemeData(
        primarySwatch: MyColors.greenish,
        scaffoldBackgroundColor: bgCol,
      ),
      home: const WhatsApp(),
    );
  }
}
