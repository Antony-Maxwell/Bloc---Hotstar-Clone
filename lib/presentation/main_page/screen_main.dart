import 'package:flutter/material.dart';
import 'package:mini_project/presentation/donwloads/screen_download.dart';
import 'package:mini_project/presentation/home/screen_home.dart';
import 'package:mini_project/presentation/main_page/widgets/bottom_nav.dart';
import 'package:mini_project/presentation/my_page/screen_my_page.dart';
import 'package:mini_project/presentation/new_and_hot/new_and_hot.dart';
import 'package:mini_project/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final pages = [
    ScreenHome(),
    ScrenSearch(),
    ScreenNewAndHot(),
    ScreenDownloadPage(),
    ScreenMyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          builder: (context, int index, _) {
            return pages[index];
          },
          valueListenable: indexChangeNotifier,
          child: SafeArea(
              child: Center(
            child: Text('main Page'),
          )),
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
