import 'package:flutter/material.dart';

class AppTheme {
  static const Color pink = Color(0xFFE2136E);
  static const Color deepPink = Color(0xFFC20B5B);
  static const Color canvas = Color(0xFFF6F6F8);
  static const Color muted = Color(0xFF74747D);
  static const Color line = Color(0xFFEAEAF0);

  static final TextStyle subtitleText = const TextStyle(fontSize: 14, color: Color(0xFF25252B), fontFamily: 'Roboto');
  static final TextStyle titleText = const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: pink, fontFamily: 'Roboto');
  static final TextStyle ntitleText = const TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Color(0xFF24242A), fontFamily: 'Roboto');
  static final TextStyle nbodyText = const TextStyle(fontSize: 13, color: muted, fontFamily: 'Roboto');
  static final TextStyle tTimeText = const TextStyle(fontSize: 12, color: muted, fontFamily: 'Roboto');
  static final TextStyle tTrxText = const TextStyle(fontSize: 12, color: muted, fontFamily: 'Roboto');
  static final TextStyle tTrxTextGreen = const TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Color(0xFF178A54), fontFamily: 'Roboto');
  static final TextStyle tTrxTextRed = const TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Color(0xFFD9364B), fontFamily: 'Roboto');
  static final TextStyle offerText = const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color(0xFF25252B), fontFamily: 'Roboto');
  static final TextStyle offerVendorText = const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: muted, fontFamily: 'Roboto');
  static final TextStyle homeHintText = const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: pink, fontFamily: 'Roboto');
  static final TextStyle actionBarText = const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white, fontFamily: 'Roboto');
  static final TextStyle hintText = const TextStyle(fontSize: 15, color: muted, fontFamily: 'Roboto');
  static final TextStyle amtHintText = const TextStyle(fontSize: 34, color: Color(0xFFB8B8C0), fontFamily: 'Roboto');
  static final TextStyle amtText = const TextStyle(fontSize: 34, fontWeight: FontWeight.w600, color: pink, fontFamily: 'Roboto');
  static final TextStyle avlAmtText = const TextStyle(fontSize: 12, color: muted, fontFamily: 'Roboto');
  static final TextStyle avlAmtText2 = const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF25252B), fontFamily: 'Roboto');
  static final TextStyle priyoText = const TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: pink, fontFamily: 'Roboto');
  static final TextStyle pinText = const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF25252B), fontFamily: 'Roboto');
  static final TextStyle pinHintText = const TextStyle(fontSize: 14, color: muted, fontFamily: 'Roboto');
  static final TextStyle dialogconfirmText = const TextStyle(fontSize: 18, color: pink, fontFamily: 'Roboto');
  static final TextStyle dialogconfirmTextGreen = const TextStyle(fontSize: 18, color: Color(0xFF178A54), fontFamily: 'Roboto');
  static final TextStyle dialogconfirmTextBold = const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: pink, fontFamily: 'Roboto');
  static final TextStyle sendFinalText = const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white, fontFamily: 'Roboto');
  static final TextStyle callIconText = const TextStyle(fontSize: 16, color: pink, fontFamily: 'Roboto');
}