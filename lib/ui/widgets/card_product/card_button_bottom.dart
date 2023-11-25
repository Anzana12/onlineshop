import 'package:flutter/material.dart';
import 'package:onlineshop/ui/widgets/buttons/button_normal.dart';
import 'package:onlineshop/ui/widgets/top_category/card_icons_widget.dart';

class ButtonBottomWidget extends StatelessWidget {
  const ButtonBottomWidget({super.key, this.onPresseds});

  final VoidCallback? onPresseds;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 16, left: 0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const CardIconsWidget(icons: Icons.shopping_bag),
        const SizedBox(
          width: 10,
        ),
        ButtonNormal(
          onPresseds: onPresseds,
        )
      ]),
    );
  }
}
