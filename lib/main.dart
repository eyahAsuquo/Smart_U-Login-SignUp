import 'package:flutter/material.dart';
import 'package:smart_u/pages/on_board_screen.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff181fc1),
        ),
        useMaterial3: true,
      ),
      home: const OnBoardScreen(),
    );
  }
}
