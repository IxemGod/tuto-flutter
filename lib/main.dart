import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      home: HomePage()
  ));
}
class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }

}

// Class de la page d'accueil en stateless car elle n'est pas dynamique
class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Container"),elevation: 12,),
      body: Container(
        child: Text("Bonjour"),
        padding: const EdgeInsets.all(100),
        margin: const EdgeInsets.all(10),
        /* padding: EdgeInsets.only(top: 100, left: 50),*/
        /* alignment: Alignment.topLeft,*/
        alignment: Alignment.center,
        height: 300,
        width: 400,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20)
        ),
      ),
    );
  }
}