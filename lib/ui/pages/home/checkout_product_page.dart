import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:onlineshop/model/product_models.dart';
import 'package:onlineshop/ui/widgets/buttons/button_checkout.dart';
import 'package:onlineshop/ui/widgets/card_product/card_content_checkout.dart';
import 'package:onlineshop/ui/widgets/card_product/card_grand_total.dart';
import 'package:onlineshop/ui/widgets/header/header_normal.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CheckoutProductPage extends StatefulWidget {
  const CheckoutProductPage({super.key});

  @override
  State<CheckoutProductPage> createState() => _CheckoutProductPageState();
}

class _CheckoutProductPageState extends State<CheckoutProductPage> {
  SharedPreferences? _prefs;
  DetailProduct? detailProduct;

  String? grandTotal;
  String? tax;
  String? totalPayment;

  List<DetailProduct> detail_products = List.empty(growable: true);

  var dataLocal;
  @override
  void initState() {
    super.initState();
    _readStoredPost();
    print(detailProduct);
  }

  void _readStoredPost() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // var postJson = prefs?.getString('myData');
    List<String>? contactListString = prefs.getStringList('myData');
    if (contactListString != null) {
      detail_products = contactListString
          .map((detailProduct) =>
              DetailProduct.fromJson(json.decode(detailProduct)))
          .toList();
    }
    print(contactListString);

    setState(() {});

    // print(contactListString!.toString()!);
  }

  @override
  Widget build(BuildContext context) {
    // print(dataLocal);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: detail_products.length,
            itemBuilder: (context, index) {
              final totalPayment = detail_products[index].priceString;
              int totalPay = int.parse(totalPayment);
              final taxs = detail_products[index].priceString;
              int tax1 = int.parse(taxs);
              double totalTax = tax1 / 2.5;
              double grandTotal = totalPay + totalTax;
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const HeaderNormal(
                    titles: "Checkout",
                  ),
                  SizedBox(
                      child: CardMainContentCheckout(
                    titles: detail_products[index].title,
                    imageUrl: detail_products[index].imageUrls,
                    price: detail_products[index].priceString,
                    sizes: "XL",
                  )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 4,
                    // color: Colors.purple,
                    child: TotalPaymentWidget(
                        totalPayment: totalPay.toString(),
                        tax: totalTax.toString(),
                        grandTotal: grandTotal.toString()),
                  ),
                  const ButtonCheckoutWidget()
                ],
              );
            }),
      )),
    );
  }
}
