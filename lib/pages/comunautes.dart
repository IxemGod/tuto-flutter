import 'package:flutter/material.dart';


class ComunautesPage extends StatefulWidget{

  const ComunautesPage({super.key,});

  @override
  State<ComunautesPage> createState() => _ComunautesPage();
}

class _ComunautesPage extends State<ComunautesPage>{

  String email = "";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: ListView(
        padding: EdgeInsets.all(40),
        children: [
          Text(email),
          TextField(
            decoration: InputDecoration(
              hintText: "Renseignez votre email",
              labelText: "E-mail",
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(),
              helperText: "Votre mail doit contenire un @",
              filled: true,
              fillColor: Colors.yellow,
              enabled: true,
            ),
            onChanged: (value){
              email = value;
              print(email);
              setState(() {

              });
            },
          )
        ],
      ),
    );
  }
}