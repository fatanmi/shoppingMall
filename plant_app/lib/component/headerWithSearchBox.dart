import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constant.dart';



class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
  final Size size= MediaQuery.of(context).size;
    return Container(
      margin:EdgeInsets.only(bottom: kDefaultPadding*1.5),
      height: size.height * 0.2,
      // color: Theme.of(context).primaryColor,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.2 - 27,
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            decoration: BoxDecoration(
              color: kprimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Hi Lovely",
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: "Raleway",
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ),
                Image.asset("assets/images/logo.png")
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: size.height * 0.05,
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              margin: EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.circular(kDefaultPadding),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: kDefaultPadding * 3,
                    color: Theme.of(context).primaryColor.withOpacity(0.3),
                  )
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      cursorColor:
                          Theme.of(context).primaryColor.withOpacity(0.2),
                      style: TextStyle(
                        color:
                            Theme.of(context).primaryColor.withOpacity(0.6),
                      ),
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: Theme.of(context)
                              .primaryColor
                              .withOpacity(0.4),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
