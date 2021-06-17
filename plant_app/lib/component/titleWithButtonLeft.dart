import 'package:flutter/material.dart';

import '../constant.dart';
import 'textWithCustomUnderline.dart';

class TitleWithButtonLeft extends StatelessWidget {
  const TitleWithButtonLeft({
    Key? key,
    required this.size,
    required this.text,
  }) : super(key: key);

  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Row(
        children: [
          Expanded(
              child: TextWithCustomUnderline(
            size: size,
            text: text,
          )),
          FlatButton(
            onPressed: () {},
            color: kprimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kDefaultPadding),
            ),
            child: Text(
              "More",
              style: TextStyle(
                color: Colors.white70,
                fontSize: kDefaultFontWeight,
                fontFamily: "Raleway",
              ),
            ),
          )
        ],
      ),
    );
  }
}
