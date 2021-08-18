import 'package:ecommerce_flutteapp_practice/constants.dart';
import 'package:ecommerce_flutteapp_practice/screens/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"), onPressed: () {  },
      ),
      actions: [
        IconButton(onPressed: (){ }, icon: SvgPicture.asset("assets/icons/search.svg")),
        IconButton(onPressed: (){ }, icon: SvgPicture.asset("assets/icons/cart.svg")),
        SizedBox(width: kDefaultPaddin / 2,)
      ],
    );
  }
}
