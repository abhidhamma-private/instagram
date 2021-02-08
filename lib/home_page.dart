import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<BottomNavigationBarItem> btmNavItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label:''),
    BottomNavigationBarItem(icon: Icon(Icons.search), label:''),
    BottomNavigationBarItem(icon: Icon(Icons.add), label:''),
    BottomNavigationBarItem(icon: Icon(Icons.healing), label:''),
    BottomNavigationBarItem(icon: Icon(Icons.account_circle), label:''),
  ];

  int _selectedIndex = 0;

  List<Widget> _screens = <Widget>[
    Container(color: Colors.amberAccent,),
    Container(color: Colors.blueAccent,),
    Container(color: Colors.greenAccent,),
    Container(color: Colors.deepPurpleAccent,),
    Container(color: Colors.deepOrangeAccent,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello flutter'),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: btmNavItems,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black87,
        currentIndex: _selectedIndex,
        onTap: _onBtmItemClick,
      ),
    );
  }

  void _onBtmItemClick(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}