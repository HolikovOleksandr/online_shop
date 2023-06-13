// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:online_shop/controllers/main_screen_provider.dart';
import 'package:online_shop/views/shared/bottom_nav.dart';
import 'package:online_shop/views/ui/tabs/tabs_imports.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> pageList = [Home(), Search(), Add(), Basket(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) => Scaffold(
        backgroundColor: const Color(0xFFE2E2E2),
        body: pageList[mainScreenNotifier.pageIndex],
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(.8),
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BottomNavWidget(
                    onTab: () {
                      mainScreenNotifier.pageIndex = 0;
                    },
                    icon: Icons.home,
                    color: mainScreenNotifier.pageIndex == 0
                        ? Colors.white
                        : Colors.white.withOpacity(.6),
                  ),
                  BottomNavWidget(
                    onTab: () {
                      mainScreenNotifier.pageIndex = 1;
                    },
                    icon: Icons.search,
                    color: mainScreenNotifier.pageIndex == 1
                        ? Colors.white
                        : Colors.white.withOpacity(.6),
                  ),
                  BottomNavWidget(
                    onTab: () {
                      mainScreenNotifier.pageIndex = 2;
                    },
                    icon: Icons.add,
                    color: mainScreenNotifier.pageIndex == 2
                        ? Colors.white
                        : Colors.white.withOpacity(.6),
                  ),
                  BottomNavWidget(
                    onTab: () {
                      mainScreenNotifier.pageIndex = 3;
                    },
                    icon: Icons.shopping_basket_sharp,
                    color: mainScreenNotifier.pageIndex == 3
                        ? Colors.white
                        : Colors.white.withOpacity(.6),
                  ),
                  BottomNavWidget(
                    onTab: () {
                      mainScreenNotifier.pageIndex = 4;
                    },
                    icon: Icons.person,
                    color: mainScreenNotifier.pageIndex == 4
                        ? Colors.white
                        : Colors.white.withOpacity(.6),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
