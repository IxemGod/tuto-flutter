import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:aplli/pages/actus.dart';
import 'package:aplli/pages/comunautes.dart';
import 'package:aplli/pages/appels.dart';
import 'package:aplli/pages/discussion.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      colorSchemeSeed: Colors.green,
      scaffoldBackgroundColor: Colors.white
    ),
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

  final pages = [
    DiscussionPage(),
    ActusPage(),
    ComunautesPage(),
    AppelsPage(),
  ];

  int pageIndex = 1;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top : BorderSide(
              color: Colors.grey, width: 1),
            ),
          ),
        child: NavigationBar(
          selectedIndex: pageIndex,
          onDestinationSelected: (int index){
            setState(() {
              pageIndex = index;
            });
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.message), label: "Discussions"),
            NavigationDestination(icon: Icon(Icons.filter_tilt_shift), label: "Actus"),
            NavigationDestination(icon: Icon(Icons.group), label: "Communautés"),
            NavigationDestination(icon: Icon(Icons.phone), label: "Appels"),
          ],
        ),
      )
    );
  }
}