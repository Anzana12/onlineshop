import 'package:flutter/material.dart';

class HeaderNormal extends StatelessWidget {
  const HeaderNormal({super.key, this.titles});

  final String? titles;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 18,
              )),
           Text(
            titles.toString(),
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
         const Text("")
        ],
      ),
    );
  }
}