import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: HomePage()
  ));
}
class HomePage extends StatefulWidget{
  HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }

}

// Class de la page d'accueil en stateless car elle n'est pas dynamique
class HomePageState extends State<HomePage> {
  final List contact = [
    "Louis Valméras",
    "Horace Velmont",
    "Paul Sernine"
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Column"),elevation: 12,),
      body: ListView.separated(
        itemCount: contact.length,
        itemBuilder: (context, index){
          return Container(
            margin: const EdgeInsets.all(10),
            child: Text(contact[index])
          );
        },
        separatorBuilder: (context, index){
          return const Divider();
        },
      ),
    );
  }
}