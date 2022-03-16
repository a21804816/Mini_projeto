import 'package:flutter/material.dart';
import 'package:mini_projeto/database/data.dart';
import 'package:mini_projeto/model/registo.model.dart';
import 'package:mini_projeto/screens/editar_registos.dart';
import 'package:mini_projeto/widgets/editarRegistos.dart';

import 'package:mini_projeto/widgets/ver_registos.dart';

class RegistosScreen extends StatefulWidget{
  final String title;

  RegistosScreen({Key? key, required this.title}) : super(key: key);

  @override
  _RegistosPageState createState() => _RegistosPageState();
}

class _RegistosPageState extends State<RegistosScreen> {

  @override
  Widget build(BuildContext context) {

  final DadosRegisto = {...Dados};

                         
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
          actions:<Widget> [
            IconButton(
            icon: Icon(Icons.edit),
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> EditarRegistosScreen(title: 'Editar Registos',))
              );
            },
            )
          ],
      ),
      body:ListView.builder(
        itemCount: DadosRegisto.length,
          itemBuilder: (context,i)=> VerRegistos(DadosRegisto.values.elementAt(i)),
      ),
      
    );
  }
  
}