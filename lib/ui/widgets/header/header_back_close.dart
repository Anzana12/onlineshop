import 'package:flutter/material.dart';

class HeaderBackClose extends StatelessWidget {
  const HeaderBackClose({super.key, this.titles});

  final String? titles;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
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
          Icon(
            Icons.favorite,
            color: Colors.black.withOpacity(0.3),
          )
        ],
      ),
    );
  }
}