import 'package:bkash/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bKash',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: const Color(0xFFE2136E),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink).copyWith(
          primary: const Color(0xFFE2136E),
          secondary: const Color(0xFFE2136E),
        ),
        scaffoldBackgroundColor: const Color(0xFFF6F6F8),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFE2136E),
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
        ),
        cardTheme: CardTheme(
          color: Colors.white,
          elevation: 1,
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFFE2136E))),
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFFEAEAF0))),
        ),
      ),
      home: const MyHomePage(title: 'bKash'),
    );
  }
}
