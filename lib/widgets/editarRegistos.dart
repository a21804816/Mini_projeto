import 'package:flutter/material.dart';
import 'package:mini_projeto/model/registo.model.dart';

class EditarRegistos extends StatelessWidget{

  final Registo registo;
  const EditarRegistos(this.registo);

  @override
  Widget build(BuildContext context) {

    return ListTile(
      leading:Icon(Icons.adjust),
      title: Text((registo.peso).toString()+'KG'),
      subtitle: Text('Como se sente: ' + registo.comoSeSente + '  Data do registo: ' + registo.data),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children:const <Widget> [
            IconButton(
              color: Colors.blue,
              icon: Icon(Icons.edit),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }

}