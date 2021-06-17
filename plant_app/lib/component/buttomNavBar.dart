import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';

class ButtomNavBar extends StatelessWidget {
  const ButtomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -10),
              blurRadius: 40,
              color: kprimaryColor.withOpacity(0.5))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/flower.svg"),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/user-icon.svg"),
          ),
        ],
      ),
    );
  }
}
