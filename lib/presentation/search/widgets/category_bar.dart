import 'package:flutter/material.dart';
import 'package:mini_project/core/colors/colors.dart';
import 'package:mini_project/core/constants/constants.dart';
import 'package:mini_project/presentation/search/widgets/title.dart';

class CategoryBar extends StatelessWidget {
  final String title;
  CategoryBar({super.key, required this.title});

  final categoryList = [
    'India',
    'Action',
    'Comedy',
    'Crime',
    'Drama',
    'Romance',
    'Thriller',
    'Horror',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // SearchTitle(title: title),
        kheight,
        Expanded(
          child: Container(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 7),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 27, 26, 26),
                      border: Border.all(
                          color: Color.fromARGB(255, 48, 47, 47), width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Text(
                          categoryList[index],
                          style: TextStyle(),
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: categoryList.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
        kheight,
      ],
    );
  }
}
