import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      home: HomePage()
  ));
}

// Class de la page d'accueil en stateless car elle n'est pas dynamique
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Appli"),elevation: 12,),
      body: const Center(child: Text("Banjour"),),
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }
}