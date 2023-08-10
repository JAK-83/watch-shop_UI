import 'package:flutter/material.dart';

import 'package:watch_shop/home_screen.dart';

void main() {
  runApp( watch_shope());
}

class watch_shope extends StatefulWidget {
  watch_shope({Key? key}) : super(key: key);

  @override
  State<watch_shope> createState() => _watch_shopeState();
}

class _watch_shopeState extends State<watch_shope> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,

     home: home_screen(),
    );
  }
} 