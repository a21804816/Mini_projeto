import 'package:flutter/material.dart';
import 'package:mini_projeto/screens/home_screen.dart';
import 'package:mini_projeto/screens/main_screen.dart';
import 'package:mini_projeto/screens/registos_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainScreen(
          screens: [
            HomeScreen (title: 'iQueChumbei'),
            RegistosScreen(title: 'Registos')
          ],
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: "Registos"
            ),
          ],
        ),
      );

  }
}