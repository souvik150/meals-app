import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/categories_screen.dart';

import 'favorites_screen.dart';

class TabsScreen extends StatefulWidget {

  @override
  State<TabsScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
  return DefaultTabController(length: 2, child: Scaffold(
    appBar: AppBar(title: Text('Meals'), bottom: TabBar(
      tabs: <Widget>[
        Tab(icon: Icon(Icons.category), text:'Categories'),
        Tab(icon: Icon(Icons.favorite), text: 'Favorites')
        ]
      ),
    ),
    body: TabBarView(children: <Widget>[
      CategoriesScreen(),
      FavoritesScreen(),
    ]),
  ),);
  }
}
