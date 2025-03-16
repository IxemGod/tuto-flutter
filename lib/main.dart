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
      body: Column(
        // Allignement vertical
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // Allignement horizontal
        crossAxisAlignment: CrossAxisAlignment.end,

        // Children, permet d'avoir plusieur éléments. L'attribut child, lui ne peut poscêder qu'un élément
        children: [
          Text("Ezio Auditore - Il Mentore"),
          Text("\"Requiescat in pace\""),
          Image.network("https://store-images.s-microsoft.com/image/apps.58021.69011092827716296.e9190db7-6f4c-478c-8555-3edad4336a39.de8bb314-af23-4670-9343-fa78251591c8?q=90&w=480&h=270")
        ],
      )
    );
  }
}