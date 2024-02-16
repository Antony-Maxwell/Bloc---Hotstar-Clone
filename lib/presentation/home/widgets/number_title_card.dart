import 'package:flutter/material.dart';
import 'package:mini_project/core/constants/constants.dart';
import 'package:mini_project/presentation/home/widgets/number_card.dart';
import 'package:mini_project/presentation/widgets/main_title.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key, required this.imagesList
  });

  final List<String>imagesList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: 'Top 20 in India Today'),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              imagesList.length,
              (index) => NumberCard(
                imageUrl: imagesList[index],
                index: index,
              ),
            ),
          ),
        )
      ],
    );
  }
}
