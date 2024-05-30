import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/widget/custom_widget.dart';
import 'package:login/widget/home.dart';

var colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.light,
  seedColor: const Color.fromARGB(255, 203, 20, 60),
);

ThemeData theme = ThemeData(
  brightness: Brightness.light,
  textTheme: const TextTheme().copyWith(
    bodyLarge: TextStyle(
      color: colorScheme.background,
      fontStyle: GoogleFonts.latoTextTheme().bodyLarge!.fontStyle,
      fontSize: 36,
    ),
  ),
  colorScheme: colorScheme,
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const Scaffold(
        body: CustomWidget(
          body: Home(),
        ),
      ),
    );
  }
}
