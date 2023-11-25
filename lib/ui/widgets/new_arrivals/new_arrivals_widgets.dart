import 'package:flutter/material.dart';
import 'package:onlineshop/ui/pages/home/detail_product.dart';
import 'package:onlineshop/ui/widgets/card_product/card_product_widgets.dart';

class NewArrivalsWidgets extends StatelessWidget {
  const NewArrivalsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "New Arrivals",
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
            ),
          ],
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DetailProductPage(
                          // id: 1,
                          imageUrls:
                              "https://s4.bukalapak.com/img/9134825101/large/sepedah.jpg",
                          titles: "Cooper Mount Bike",
                          priceString: "570",
                          ratingString: "4.5",
                        )));
          },
          child: const CardProductWidget(
            imageUrl:
                "https://s4.bukalapak.com/img/9134825101/large/sepedah.jpg",
            titleValue: "Cooper Mount Bike",
            priceValue: "570",
            ratingValue: "4.5",
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DetailProductPage(
                          // id: 2,
                          imageUrls:
                              "https://www.skmei-id.com/public/upload/product/jam-tangan-pria-digital-original-skmei-dg1759-1632128056.jpg",
                          titles: "trafic Heart Monitor",
                          priceString: "120",
                          ratingString: "3.8",
                        )));
          },
          child: const CardProductWidget(
            imageUrl:
                "https://www.skmei-id.com/public/upload/product/jam-tangan-pria-digital-original-skmei-dg1759-1632128056.jpg",
            titleValue: "trafic Heart Monitor",
            priceValue: "120",
            ratingValue: "3.8",
          ),
        ),
      ],
    );
  }
}
