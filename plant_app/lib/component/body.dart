import 'package:flutter/material.dart';
import './headerWithSearchBox.dart';
import 'featuredPlantCard.dart';
import 'recommendedPlantCard.dart';
import 'titleWithButtonLeft.dart';

class Body extends StatelessWidget {
  void selectDetailsScreen(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      "/details-Screen",
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(),
          TitleWithButtonLeft(
            size: size,
            text: "Recommended",
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RecommendedPlantCard(
                    title: "flower",
                    imageUrl: "assets/images/image_1.png",
                    press: () {},
                  ),
                  RecommendedPlantCard(
                    title: "Samantha",
                    imageUrl: "assets/images/image_2.png",
                    press: () {},
                  ),
                  RecommendedPlantCard(
                    title: "Angelica",
                    imageUrl: "assets/images/image_3.png",
                    press: () {},
                  ),
                  RecommendedPlantCard(
                    title: "Russia",
                    imageUrl: "assets/images/image_1.png",
                    press: () {},
                  ),
                ],
              ),
            ),
          ),
          TitleWithButtonLeft(
            size: size,
            text: "Featured Plants",
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FeaturedPlantCard(
                  imageUrl: "assets/images/bottom_img_1.png",
                ),
                FeaturedPlantCard(
                  imageUrl: "assets/images/bottom_img_2.png",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
