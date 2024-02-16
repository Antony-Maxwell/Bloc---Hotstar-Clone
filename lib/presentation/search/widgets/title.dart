import 'package:flutter/material.dart';

class SearchTitle extends StatelessWidget {
  final String title;
  const SearchTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
