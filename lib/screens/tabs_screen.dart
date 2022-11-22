import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/categories_screen.dart';

import 'favorites_screen.dart';

class TabsScreen extends StatefulWidget {

  @override
  State<TabsScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {'page':CategoriesScreen(), 'title': 'Categories'},
    {'page':FavoritesScreen(), 'title': 'Your favorites'},
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index){
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text(_pages[_selectedPageIndex]['title'] as String)
    ),
    body: _pages[_selectedPageIndex]['page'] as Widget,
    bottomNavigationBar: BottomNavigationBar(
      onTap: _selectPage,
      backgroundColor: Theme.of(context).primaryColor,
      unselectedItemColor: Colors.white,
      selectedItemColor: Theme.of(context).backgroundColor,
      currentIndex: _selectedPageIndex,
      type: BottomNavigationBarType.shifting,
      items: [
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).primaryColor,
          icon: Icon(Icons.category),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            label: 'Favorites'
        )
      ],
    )
  );
  }
}
