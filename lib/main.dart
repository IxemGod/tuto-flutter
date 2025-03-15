import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(const HomePage());


  /* runApp(Center(
    child : Image.network("https://www.abondance.com/wp-content/uploads/2018/07/francois-hollande.jpg"),
  )); */

  // On affiche du texte au centre de la page de manière statique
  /* runApp(Center(
    child : Text("Bonjour Flutter",
      textDirection : TextDirection.ltr,
    ),
  )); */
}

// Class de la page d'accueil en stateless car elle n'est pas dynamique
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context){
    return const Center(
      child : Text("Bonjour Flutter",
        textDirection : TextDirection.ltr,
      ),
    );
  }
}