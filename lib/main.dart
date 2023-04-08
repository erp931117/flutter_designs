import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_designs/src/pages/basic_page.dart';
import 'package:flutter_designs/src/pages/buttons_page.dart';
import 'package:flutter_designs/src/pages/scroll_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'buttons',
      routes: {
        'scroll': (context) => const ScrollPage(),
        'basic': (context) => BasicPage(),
        'buttons': (context) => const ButtonsPage()
      },
    );
  }
}
