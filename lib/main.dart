import 'package:flutter/material.dart';
import 'package:myfridge/app/pages/favorites/favorite.dart';
import 'package:myfridge/app/pages/myfridge/myfridge.dart';
import 'package:myfridge/app/pages/recipes/recipe.dart';
import 'package:myfridge/app/pages/warning/warning.dart';
import 'package:myfridge/app/widgets/navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
      
    return MaterialApp(
      routes: {
    '/myfridge': (context) => MyFridgePage(),
    '/recipe': (context) => RecipePage(),
    '/myfavorite': (context) => MyFavoritePage(),
    '/warning': (context) => WarningPage(),
  },
  home: MyBottomNavigationBar(),);
  }
}
