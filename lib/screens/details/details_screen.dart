import 'package:ecommerce_flutteapp_practice/models/Product.dart';
import 'package:ecommerce_flutteapp_practice/screens/details/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class Detailsscreen extends StatelessWidget {
  final Product product;

  const Detailsscreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/back.svg', color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(onPressed: (){ }, icon: SvgPicture.asset("assets/icons/search.svg"), color: Colors.white),
        IconButton(onPressed: (){ }, icon: SvgPicture.asset("assets/icons/cart.svg"), color: Colors.white),
        SizedBox(width: kDefaultPaddin / 2,)
      ],
    );
  }
}
