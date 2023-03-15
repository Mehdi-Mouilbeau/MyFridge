import 'package:flutter/material.dart';
import 'package:myfridge/app/widgets/navbar.dart';

class RecipePage extends StatefulWidget {
  @override
  _RecipePageState createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  late BuildContext _context;

  @override
  void initState() {
    super.initState();
    _context = context;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('recipe'),
      ),
      body: Center(
        child: Text('recipe'),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }

  @override
  void dispose() {
    Navigator.of(_context).popUntil((route) => route.isFirst);
    super.dispose();
  }
}

