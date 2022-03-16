import 'package:flutter/material.dart';
import 'package:mini_projeto/model/registo.model.dart';

class Dashboard extends StatelessWidget{

  final Registo registo;
  const Dashboard(this.registo);


  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget> [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:<Widget> [
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: MaterialButton(
                  height: 150.0,
                  minWidth: 150.0,
                  color: Colors.white,
                  textColor: Colors.black,
                  child: Text((registo.peso).toString()),
                  onPressed: () => {},
                  splashColor: Colors.redAccent,
                )
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: MaterialButton(
                  height: 150.0,
                  minWidth: 150.0,
                  color: Colors.white,
                  textColor: Colors.black,
                  child: const Text(""),
                  onPressed: () => {},
                )
            ),
          ],
        ),

      ],
    );
  }
}

