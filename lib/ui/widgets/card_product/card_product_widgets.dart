import 'package:flutter/material.dart';

class CardProductWidget extends StatelessWidget {
  const CardProductWidget(
      {super.key,
      this.imageUrl,
      this.titleValue,
      this.priceValue,
      this.ratingValue});

  final String? imageUrl;
  final String? titleValue;
  final String? priceValue;
  final String? ratingValue;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.network(
                // "https://s4.bukalapak.com/img/9134825101/large/sepedah.jpg",
                imageUrl.toString(),
                height: 80,
                width: 80,
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titleValue.toString(),
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text("\$ $priceValue"),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [const Icon(Icons.star), Text(ratingValue.toString())],
                      ))
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Icon(Icons.favorite), Icon(Icons.add)],
            ),
          )
        ],
      ),
    ));
  }
}
