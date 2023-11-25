import 'package:flutter/material.dart';
import 'package:onlineshop/ui/widgets/top_category/card_icons_widget.dart';

class TopCategoryWidgets extends StatelessWidget {
  const TopCategoryWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    List iconsData = [
      Icons.laptop,
      Icons.headphones,
      Icons.lock_clock,
      Icons.tv,
      Icons.wallet,
      Icons.shopify
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Top Categries",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View More',
                      style: TextStyle(color: Colors.orange),
                    )),
                const Icon(
                  Icons.chevron_right,
                  color: Colors.orange,
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 60,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: iconsData.length,
              itemBuilder: (BuildContext context, int index) {
                return CardIconsWidget(
                  icons: iconsData[index],
                );
              }),
        )
        // Row(
        //   children: [
        //     CardIconsWidget(
        //       icons: Icons.laptop,
        //     ),
        //     SizedBox(width: 10,),
        //     CardIconsWidget(
        //       icons: Icons.headphones,
        //     ),
        //      SizedBox(width: 10,),
        //     CardIconsWidget(
        //       icons: Icons.phone,
        //     ),
        //      SizedBox(width: 10,),
        //     CardIconsWidget(
        //       icons: Icons.lock_clock,
        //     ),
        //      SizedBox(width: 10,),
        //     CardIconsWidget(
        //       icons: Icons.lock_clock,
        //     ),
        //       SizedBox(width: 10,),
        //     CardIconsWidget(
        //       icons: Icons.lock_clock,
        //     )
        //   ],
        // ),
      ],
    );
  }
}
