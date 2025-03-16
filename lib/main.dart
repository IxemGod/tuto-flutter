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
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // La taille de l'image s'adapte tout seule à la fenêtre
          Image.network("https://upload.wikimedia.org/wikipedia/commons/1/14/CCRM_Renault_Kerax_-_Gallin_%281%29.jpg", width: 250,),
          Text("Camion Citerne Rurale"),
          Image.network("https://lh5.googleusercontent.com/proxy/8UzeMa7FA8rWxFhJ3rzT850pXLErvspFFulHp5AuiqP9AEZLAfF_CTfpvvNZ0dTtyMa2-0NJUNmrHSVKRgBnKK7GIQPAFOD9ArHPiuZwlPVTipeUqNRx", width: 250,),
          Text("Fourgon Pompe Tone"),
          Image.network("https://allo18.fr/wp-content/uploads/2023/12/OUVERTURE.jpg", width: 250,),
          Text("Bras Élévateur Articulé")
        ],
      ),
    );
  }
}