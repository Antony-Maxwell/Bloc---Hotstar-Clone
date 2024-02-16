import 'package:flutter/material.dart';
import 'package:mini_project/core/constants/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index,required this.imageUrl});
  final int index;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 25,
            ),
            Container(
              width: 150,
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
          ],
        ),
        Positioned(
            top: 110,
            child: Text(
              "${index + 1}",
              style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()
                    ..shader = LinearGradient(
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter,
                      colors: <Color>[
                        Colors.white,
                        Colors.black,
                      ],
                    ).createShader(Rect.fromLTRB(0.0, 0.0, 0.0, 350.0))),
            ))
      ],
    );
  }
}
