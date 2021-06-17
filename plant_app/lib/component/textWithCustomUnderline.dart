import 'package:flutter/material.dart';

import '../constant.dart';

class TextWithCustomUnderline extends StatelessWidget {
  const TextWithCustomUnderline({
    Key? key,
    required this.size,
    required this.text,
  }) : super(key: key);

  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.033,
      // color: Colors.amber,
      padding: const EdgeInsets.only(
          left: kDefaultPadding, right: kDefaultPadding * 4),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: "Raleway",
          fontSize: 16,
          fontWeight: FontWeight.bold,
          shadows: <Shadow>[
            Shadow(
              offset: Offset(0, 0),
              blurRadius: 20,
              color: Theme.of(context).primaryColor.withOpacity(0.6),
            ),
            // Shadow(
            //   offset: Offset(-10.0, 50),
            //   blurRadius: 8.0,
            //   color: Color.fromARGB(125, 0, 0, 255),
            // ),
          ],
        ),
      ),
    );
  }
}
