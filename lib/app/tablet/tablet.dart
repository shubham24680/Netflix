import 'package:flutter/material.dart';
import 'package:seven/features/view/home/home.dart';
import 'package:seven/features/view/search/search.dart';
import 'package:seven/features/view_model/bottom_navigation_button.dart';
import 'package:seven/features/view_model/shows_provider.dart';
import 'package:provider/provider.dart';

class TabletLayout extends StatelessWidget {
  TabletLayout({super.key});

  final List<Widget> screen = [
    const Home(),
    const Search(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<ShowsProvider>(
          builder: (_, value, __) {
            return screen[value.currentIndex];
          },
        ),
        bottomNavigationBar: BottomNavigationButton(),
      ),
    );
  }
}
