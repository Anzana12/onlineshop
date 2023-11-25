import 'package:flutter/material.dart';

class MainContentProduct extends StatelessWidget {
  const MainContentProduct({super.key, this.imageUrl, this.titleString, this.ratingString, this.priceString});

  final String? imageUrl;
  final String? titleString;
  final String? ratingString;
  final String? priceString;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl.toString(),
            height: 400,
            width: 400,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(titleString.toString()),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () {},
                  child:  Row(
                    children: [const Icon(Icons.star), Text(ratingString.toString())],
                  ))
            ],
          ),
          Text("\$ $priceString"),
          const SizedBox(
            height: 20,
          ),
          const Text("- Scaple Hi-Mod Ultimate Cooper Mountain Bike 2021 "),
          const SizedBox(
            height: 40,
          ),
          const Text("Size "),
          const SizedBox(height: 5),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RoundedCardSize(
                title: "S",
              ),
              RoundedCardSize(
                title: "M",
                colors: Colors.black,
              ),
              RoundedCardSize(
                title: "L",
              ),
              RoundedCardSize(
                title: "XL",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class RoundedCardSize extends StatelessWidget {
  const RoundedCardSize({super.key, this.title, this.colors});

  final String? title;
  final Color? colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Container(
        height: 40,
        width: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1),
            color: colors ?? Colors.grey.withOpacity(0.3)),
        child: Text(
          title.toString(),
          style: TextStyle(color: colors == null ? Colors.black : Colors.white),
        ),
      ),
    );
  }
}
