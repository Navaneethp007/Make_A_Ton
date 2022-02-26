import 'package:flutter/material.dart';
import 'prod.dart';
import 'addto.dart';
import 'colorsize.dart';
import 'favcount.dart';
import 'desc.dart';
import 'prodimagetitle.dart';

class Bodydet extends StatelessWidget {
  final Product product;

  const Bodydet({Key ?key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: 20.0,
                    right: 20.0,
                  ),
                  // height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(height: 20.0 / 2),
                      Description(product: product),
                      SizedBox(height: 20.0 / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: 20.0 / 2),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}