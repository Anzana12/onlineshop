import 'package:flutter/material.dart';

class ButtonNormal extends StatelessWidget {
  const ButtonNormal({super.key, this.onPresseds});

  final VoidCallback? onPresseds;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPresseds,
      child: Container(
        height: 60,
        width: 330,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(10)),
        child: const Text(
          "Add to Cart",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
