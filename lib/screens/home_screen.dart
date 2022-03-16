import 'package:flutter/material.dart';
import 'package:mini_projeto/widgets/dashboard.dart';
import 'package:mini_projeto/database/data.dart';


class HomeScreen extends StatefulWidget{
  final String title;

  HomeScreen({Key? key, required this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final registo = Dados;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:ListView.builder(
        itemCount: registo.length,
        itemBuilder: (context,i)=> Dashboard(registo.values.elementAt(i)),
      ),
    );
  }
}