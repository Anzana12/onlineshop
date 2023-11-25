import 'package:flutter/material.dart';

class ButtonCheckoutWidget extends StatelessWidget {
  const ButtonCheckoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 60,
        padding: const EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width / 1,
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(10)),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.production_quantity_limits, color: Colors.white,),
            Text("Checkout", style: TextStyle(color: Colors.white),),
            Text("")
          ],
        ),
      ),
    );
  }
}