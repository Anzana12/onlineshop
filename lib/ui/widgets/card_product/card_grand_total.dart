import 'package:flutter/material.dart';

class TotalPaymentWidget extends StatelessWidget {
  const TotalPaymentWidget(
      {super.key, this.grandTotal, this.tax, this.totalPayment});

  final String? totalPayment;
  final String? tax;
  final String? grandTotal;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Billing Information",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Order Total",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                Text("\$$totalPayment",
                    style:
                        const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Tax",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                Text("\$$tax",
                    style:
                        const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(""),
                Text("-----------",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Grand Total",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                Text("\$$grandTotal",
                    style:
                        const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
