import 'package:flutter/material.dart';
import 'package:stepper/screen/view/home%20scereen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => homeScreen(),
      },
    ),
  );
}
