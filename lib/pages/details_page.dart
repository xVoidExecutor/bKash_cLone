import 'package:bkash/enums/home_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles/AppTheme.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key, required this.menu}) : super(key: key);

  final HomeMenu menu;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F8),
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.menu.title, style: AppTheme.actionBarText, textAlign: TextAlign.center,),
          backgroundColor: const Color(0xFFE2136E),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0, right: 12.0, bottom: 12.0),
              child: SizedBox(
                  width: 34, height: 34, child: Image.asset('assets/logo.png')),
            )
          ],
        ),
        body: Center(child: widget.menu.widget,)
    );
  }
}