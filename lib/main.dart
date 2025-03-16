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
      appBar: AppBar(title: const Text("Column"),elevation: 12,),
      body: Row(

        // Allignement vertical sur l'axe des y
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        // Allignement horizontal sur l'axe des abscices
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(Icons.thumb_up),
          Text("Peter Porker"),
          Image.network("https://i.pinimg.com/736x/ca/76/50/ca76502bd827d799537d9dc75eb38a5b.jpg", width: 200,),
          Text("Spider-cochon"),
          Icon(Icons.thumb_down),

        ],
      )
    );
  }
}