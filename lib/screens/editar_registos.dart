import 'package:flutter/material.dart';
import 'package:mini_projeto/database/data.dart';
import 'package:mini_projeto/widgets/editarRegistos.dart';

class EditarRegistosScreen extends StatefulWidget{
  final String title;

  EditarRegistosScreen({Key? key, required this.title}) : super(key: key);

  @override
  _EditarRegistosPageState createState() => _EditarRegistosPageState();
}

class _EditarRegistosPageState extends State<EditarRegistosScreen> {

  @override
  Widget build(BuildContext context) {

    final registo = {...Dados};
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:ListView.builder(
        itemCount: registo.length,
        itemBuilder: (context,i)=> EditarRegistos(registo.values.elementAt(i)),
      ),
    );
  }
}