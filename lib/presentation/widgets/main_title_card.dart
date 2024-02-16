import 'package:flutter/material.dart';
import 'package:mini_project/core/constants/constants.dart';
import 'package:mini_project/presentation/widgets/main_card.dart';
import 'package:mini_project/presentation/widgets/main_title.dart';

class MainTitle_card extends StatelessWidget {
  MainTitle_card({super.key, required this.title,required this.imageList});

  final String title;
  final List<String>imageList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(imageList.length, (index) => MainCardImage(imageUrl: imageList[index],))),
        )
      ],
    );
  }
}
