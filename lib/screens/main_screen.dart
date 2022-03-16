import 'package:flutter/material.dart';
import 'package:mini_projeto/widgets/formulario.dart';



class MainScreen extends StatefulWidget {

  final List<Widget> screens;
  final List<BottomNavigationBarItem> items;

  const MainScreen({Key? key, required this.screens, required this.items}) : super (key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();

}

class _MainScreenState extends State<MainScreen> {

  int _pageIndex = 0;

  void _onTapped(int newPageIndex) {
    setState(() {
      _pageIndex = newPageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: widget.screens[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: _onTapped,
        items: widget.items,
      ),
      floatingActionButton: SizedBox(
        height: 75.0,
        width: 75.0,
        child: FittedBox(
          child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> Formulario())
              );
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}