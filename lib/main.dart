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
  final List images = [
    "https://upload.wikimedia.org/wikipedia/commons/1/14/CCRM_Renault_Kerax_-_Gallin_%281%29.jpg",
    "https://lh5.googleusercontent.com/proxy/8UzeMa7FA8rWxFhJ3rzT850pXLErvspFFulHp5AuiqP9AEZLAfF_CTfpvvNZ0dTtyMa2-0NJUNmrHSVKRgBnKK7GIQPAFOD9ArHPiuZwlPVTipeUqNRx",
    "https://allo18.fr/wp-content/uploads/2023/12/OUVERTURE.jpg"
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Column"),elevation: 12,),
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index){
          return Container(
            margin: const EdgeInsets.all(10),
            child: Image.network(images[ind ex], height: 110,)
          );
        },
      ),
    );
  }
}