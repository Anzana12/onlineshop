import 'package:flutter/material.dart';

class CardIconsWidget extends StatelessWidget {
  const CardIconsWidget({super.key, this.icons});

  final IconData? icons;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(10)),
      child: Icon(icons),
    );
  }
}
