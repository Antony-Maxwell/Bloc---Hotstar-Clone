import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  final String imageUrl;
  final double size;

  CustomCircleAvatar({required this.imageUrl, this.size = 50.0});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      radius: size / 2,
      backgroundImage: NetworkImage(imageUrl),
    );
  }
}
