import 'package:flutter/material.dart';
import 'package:myfridge/app/widgets/navbar.dart';

class MyFavoritePage extends StatefulWidget {
  @override
  _MyFavoritePageState createState() => _MyFavoritePageState();
}

class _MyFavoritePageState extends State<MyFavoritePage> {
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
        title: Text('myfavorite'),
      ),
      body: Center(
        child: Text('myfavorite'),
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
