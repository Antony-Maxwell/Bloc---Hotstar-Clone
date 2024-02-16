import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int value, _) {
        return BottomNavigationBar(
            elevation: 1,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              indexChangeNotifier.value = index;
            },
            selectedFontSize: 10,
            currentIndex: value,
            selectedItemColor: Colors.white,
            unselectedItemColor: Color.fromARGB(255, 100, 118, 133),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.countertops_outlined), label: 'New & Hot'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.download_sharp), label: 'Downloads'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.space_dashboard_outlined),
                  label: 'My Space'),
            ]);
      },
    );
  }
}
