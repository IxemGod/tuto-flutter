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

  int counter = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Appli"),elevation: 12,),
      body: Center(child: Text("Banjour $counter"),),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              counter += 1;
            });
          },
        child: Icon(Icons.add),
      ),
    );
  }
}