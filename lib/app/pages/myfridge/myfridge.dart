
import 'package:flutter/material.dart';
import 'package:myfridge/app/widgets/navbar.dart';

class MyFridgePage extends StatefulWidget {
  @override
  _MyFridgePageState createState() => _MyFridgePageState();
}

class _MyFridgePageState extends State<MyFridgePage> {
  late BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context = context;

    return Scaffold(
      appBar: AppBar(
        title: Text('myfridge'),
      ),
      body: Center(
        child: Text('myfridge'),
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

