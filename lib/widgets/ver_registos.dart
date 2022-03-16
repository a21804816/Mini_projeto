import 'package:flutter/material.dart';
import 'package:mini_projeto/database/data.dart';
import 'package:mini_projeto/model/registo.model.dart';

class VerRegistos extends StatelessWidget{

  final Registo registo;
  const VerRegistos(this.registo);


  @override
  Widget build(BuildContext context) {
    final DadosRegisto = {...Dados};
    
    
                    
   return ListTile(
     leading:Icon(Icons.adjust),
     title: Text((registo.peso).toString()+'KG'),
     subtitle: Text('Como se sente: ' + registo.comoSeSente + '  Data do registo: ' + registo.data),
   );
  }

  
}