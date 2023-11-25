import 'package:flutter/material.dart';

class CardMainContentCheckout extends StatelessWidget {
  const CardMainContentCheckout(
      {super.key, this.imageUrl, this.price, this.sizes, this.titles});

  final String? imageUrl;
  final String? titles;
  final String? price;
  final String? sizes;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.network(
                imageUrl.toString(),
                height: 60,
                width: 60,
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titles.toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("\$ ${price.toString()}",
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("Size: $sizes",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text("Color: Blue"),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 70,
            // color: Colors.amber,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Container(
                    height: 20,
                    width: 20,
                    color: Colors.black,
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                const Text("2"),
                InkWell(
                  child: Container(
                    height: 20,
                    width: 20,
                    color: Colors.black,
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
