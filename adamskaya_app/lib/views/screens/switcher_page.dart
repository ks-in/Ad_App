import 'package:adamskaya_app/style/colors.dart';
import 'package:adamskaya_app/views/screens/categories_page.dart';
import 'package:adamskaya_app/views/screens/home_page.dart';
import 'package:adamskaya_app/views/widgets/default_text.dart';
import 'package:flutter/material.dart';

class SwitcherPage extends StatefulWidget {
  const SwitcherPage({Key? key}) : super(key: key);

  @override
  State<SwitcherPage> createState() => _SwitcherPageState();
}

class _SwitcherPageState extends State<SwitcherPage> {
  int _selectedIndex = 0;

  List<Widget> _pages = <Widget>[
    HomePage(),
    CategoriesPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      //print('currentIndex $_selectedIndex');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text('Switcher'),
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(color: AppColors.softGreyColor, width: 2))),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            backgroundColor: Colors.white,
            selectedItemColor: AppColors.mainColor,
            unselectedItemColor: AppColors.mainSignatureColor,
            //selectedFontSize: 14,
            // unselectedFontSize: 14,
            selectedLabelStyle: defaultTextStyle(fontSize: 14),
            unselectedLabelStyle: defaultTextStyle(fontSize: 14),
            //showUnselectedLabels: false,

            onTap: _onItemTapped,
            // print('currentIndex $_currentIndex');
            //print('value ${value}');
            //if(value == 0) Navigator.of(context).push( MaterialPageRoute(builder: (context) =>HomePage()));
            //},
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard), label: 'Catalog'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: 'Cart'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle), label: 'Profile'),
            ]),
      ),
    );
  }
}

/*
class SwitcherPage1 extends StatelessWidget {
  const SwitcherPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(title: Text('Switcher'),),
      body: [
        HomePage(),
        CategoriesPage()
      ][_currentIndex],
      bottomNavigationBar:
      Container(
        decoration: BoxDecoration(border: Border(top: BorderSide(color: AppColors.softGreyColor, width: 2))),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            backgroundColor: Colors.white,
            selectedItemColor: AppColors.mainColor,
            unselectedItemColor: AppColors.mainSignatureColor,
            //selectedFontSize: 14,
           // unselectedFontSize: 14,
            selectedLabelStyle: defaultTextStyle(fontSize: 14),
            unselectedLabelStyle: defaultTextStyle(fontSize: 14),
            //showUnselectedLabels: false,
            onTap: (value){

             // print('currentIndex $_currentIndex');
              //print('value ${value}');
              if(value == 0) Navigator.of(context).push( MaterialPageRoute(builder: (context) =>HomePage()));
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: 'Catalog'),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart'),
              BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'Profile'),
            ]),
      ),
    );
  }
}*/
