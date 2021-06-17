import 'package:flutter/material.dart';

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        margin: EdgeInsets.all(5),
        child: Stack(
          children: [
            InkWell(
              onTap: () {},
              splashColor: Theme.of(context).primaryColor.withOpacity(0.6),
              borderRadius: BorderRadius.circular(15),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.asset(
                  imageUrl,
                  height: size.height * 0.2,
                  fit: BoxFit.cover,
                  width: size.width * 1,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
