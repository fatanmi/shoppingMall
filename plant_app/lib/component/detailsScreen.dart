import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  static const routeName = "/details-Screen";

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    final title = routeArgs["title"];
    final imageUrl = routeArgs["imageUrl"];

    print("title:${title}");
    print("imageUrl:${imageUrl}");
    
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: Container(
        height: 200,
        color: Colors.blue,
        child: Image.asset(imageUrl!),
      ),
    );
  }
}
