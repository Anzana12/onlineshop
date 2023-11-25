import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:onlineshop/model/product_models.dart';
import 'package:onlineshop/ui/pages/home/checkout_product_page.dart';
import 'package:onlineshop/ui/widgets/card_product/card_button_bottom.dart';
import 'package:onlineshop/ui/widgets/header/header_back_close.dart';
import 'package:onlineshop/ui/widgets/product/main_content_product.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetailProductPage extends StatefulWidget {
  const DetailProductPage(
      {super.key,
      this.titles,
      this.imageUrls,
      this.priceString,
      this.ratingString,
      this.id});

  final int? id;
  final String? titles;
  final String? imageUrls;
  final String? ratingString;
  final String? priceString;
  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  DetailProduct? detailProduct;
  int selectedIndex = -1;
  SharedPreferences? sp;
  bool isLoading = false;

  List<DetailProduct> detail_products = List.empty(growable: true);

  saveIntoSp(void add) async {
    // final sp = await SharedPreferences.getInstance();
    List<String> detailProductListString = detail_products
        .map((detailProduct) => jsonEncode(detailProduct.toJson()))
        .toList();
    sp?.setStringList("myData", detailProductListString);
    setState(() {
      isLoading = true;
    });
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const CheckoutProductPage()));
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LoadingOverlay(
          isLoading: isLoading,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  HeaderBackClose(
                    titles: widget.titles,
                  ),
                  const Text("data"),
                  MainContentProduct(
                    imageUrl: widget.imageUrls,
                    titleString: widget.titles,
                    ratingString: widget.ratingString,
                    priceString: widget.priceString,
                  ),
                ],
              ),
              ButtonBottomWidget(
                onPresseds: () {
                  saveIntoSp(detail_products.add(DetailProduct(
                      // id: widget.id!.toInt(),
                      title: widget.titles.toString(),
                      imageUrls: widget.imageUrls.toString(),
                      ratingString: widget.ratingString.toString(),
                      priceString: widget.priceString.toString())));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
