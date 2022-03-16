import 'package:flutter/material.dart';
import 'package:mini_projeto/database/data.dart';
import 'package:mini_projeto/model/registo.model.dart';

class Formulario extends StatelessWidget{

  final _formKey = GlobalKey<FormState>();
  

  @override
  Widget build(BuildContext context) {


    final DadosRegisto= {...Dados};
  
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registo de Peso'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children:<Widget> [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                validator: (value){
                  if(value==null|| value.isEmpty){
                    return 'Campo Obrigatório';
                  }
                },
                decoration: const InputDecoration(
                    labelText: 'Peso (KG)',
                    hintText: '76.50'
                ),
                maxLength: 6,
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                validator: (value){
                  if(value==null|| value.isEmpty){
                    return 'Campo Obrigatório';
                  }
                },
                decoration: const InputDecoration(
                    labelText: 'Como se sente hoje? (1 a 5)',
                    hintText: '5'
                ),
                maxLength: 1,
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                validator: (value){
                  if(value==null|| value.isEmpty){
                    return 'Campo Obrigatório';
                  }
                },
                decoration: const InputDecoration(
                    labelText: 'Alimentou-se nas últimas 3 horas?',
                    hintText: 'Sim / Não'
                ),
                maxLength: 3,

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Observações',
                    hintText: 'Observações'
                ),
                maxLength: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },

                child: const Text('Submeter'),
              ),
            ),
          ],
        ),
      ),
    );
  }
 
}