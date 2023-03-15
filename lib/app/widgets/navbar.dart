import 'package:flutter/material.dart';
import 'package:myfridge/app/pages/favorites/favorite.dart';
import 'package:myfridge/app/pages/myfridge/myfridge.dart';
import 'package:myfridge/app/pages/recipes/recipe.dart';
import 'package:myfridge/app/pages/warning/warning.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[    Text('MyFridge'),    Text('Recipe'),    Text('MyFavorite'),    Text('Warning'),  ];


void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
  switch(index) {
    case 0:
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyFridgePage()));
      break;
    case 1:
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RecipePage()));
      break;
    case 2:
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyFavoritePage()));
      break;
    case 3:
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WarningPage()));
      break;
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.kitchen, color: Color.fromARGB(255, 248, 248, 7)),
            label: 'MyFridge',
            backgroundColor: Color.fromARGB(255, 0, 0, 0)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book,color: Color.fromARGB(255, 250, 2, 188)),
            label: 'Recipe',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,color: Color.fromARGB(255, 2, 253, 44)),
            label: 'MyFavorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning,color: Color.fromARGB(255, 248, 3, 3)),
            label: 'Warning',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
