import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key, required this.title, required this.image}) : super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4 - 8,
      height: 94,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 52, height: 52,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(color: const Color(0xFFFFF1F7), borderRadius: BorderRadius.circular(16)),
            child: Image.asset(image, fit: BoxFit.contain, errorBuilder: (_, __, ___) => const Icon(Icons.apps_rounded, color: Color(0xFFE2136E))),
          ),
          const SizedBox(height: 7),
          Text(title, style: const TextStyle(color: Color(0xFF373740), fontSize: 11.5, fontWeight: FontWeight.w500), maxLines: 1, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}