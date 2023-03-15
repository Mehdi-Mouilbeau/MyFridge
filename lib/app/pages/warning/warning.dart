import 'package:flutter/material.dart';
import 'package:myfridge/app/widgets/navbar.dart';

class WarningPage extends StatefulWidget {
  @override
  _WarningPageState createState() => _WarningPageState();
}

class _WarningPageState extends State<WarningPage> {
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
        title: Text('warning'),
      ),
      body: Center(
        child: Text('warning'),
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
