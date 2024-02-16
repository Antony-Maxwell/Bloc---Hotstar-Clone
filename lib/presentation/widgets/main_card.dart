import 'package:flutter/material.dart';
import 'package:mini_project/core/constants/constants.dart';

class MainCardImage extends StatelessWidget {
  final String imageUrl;
  const MainCardImage({
    super.key, required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: 130,
        height: 230,
        decoration: BoxDecoration(
          borderRadius: kRadius,
          image: DecorationImage(
            image: NetworkImage(
              imageUrl,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
