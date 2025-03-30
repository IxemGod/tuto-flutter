import 'package:flutter/material.dart';


class ActusPage extends StatefulWidget {
  @override
  _ActuPageState createState() => _ActuPageState();
}

class _ActuPageState extends State<ActusPage>{
  @override
    Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu), // Partie tout a gauche
        title: Text("Mon application"),
        elevation: 18.0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
        ],
      ),
      body: Center(
        child: Text("Flutter"),
      ),
    );
  }
}
