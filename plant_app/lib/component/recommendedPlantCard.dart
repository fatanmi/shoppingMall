import 'package:flutter/material.dart';

import '../constant.dart';

class RecommendedPlantCard extends StatelessWidget {
  const RecommendedPlantCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String imageUrl;
  final String title;
  final Function press;

  void selectDetailsScreen(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      "/details-Screen",
      arguments: {
        "title": title,
        "imageUrl": imageUrl,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        margin: EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: InkWell(
                    // borderRadius: BorderRadius.circular(15),
                    onTap: () => selectDetailsScreen(context),
                    splashColor: Theme.of(context).accentColor.withOpacity(0.9),
                    child: Image.asset(
                      imageUrl,
                      width: size.width * 0.4,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  left: 10,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Container(
                      color: Colors.black54,
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 14),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: kDefaultFontWeight * 0.6,
                          color: Colors.white70,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.schedule,
                        size: 16.0,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      // Text("g")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work_outline, size: 16.0),
                      SizedBox(
                        width: 2,
                      ),
                      // Text("s", ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money, size: 16.0),
                      SizedBox(
                        width: 2,
                      ),
                      // Text("s"),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
