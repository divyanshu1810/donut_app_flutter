import 'package:donut_tutorial/util/my_tab.dart';
import 'package:flutter/material.dart';

import '../tab/burger_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = const [
    MyTab(
      iconPath: 'lib/icons/donut.png',
    ),
    MyTab(
      iconPath: 'lib/icons/burger.png',
    ),
    MyTab(
      iconPath: 'lib/icons/smoothie.png',
    ),
    MyTab(
      iconPath: 'lib/icons/pancakes.png',
    ),
    MyTab(
      iconPath: 'lib/icons/pizza.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
        body: Column(
          children: [
            // i want to eat
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: [
                  Text(
                    'I want to',
                    style: TextStyle(fontSize: 24, color: Colors.grey[600]),
                  ),
                  const Text(
                    ' EAT',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            TabBar(tabs: myTabs),

            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(),
                  const BurgerTab(),
                  const SmoothieTab(),
                  const PancakeTab(),
                  const PizzaTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
