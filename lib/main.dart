import 'package:aplli/pages/home_page.dart';
import 'package:aplli/pages/setting_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:aplli/pages/actus.dart';
import 'package:aplli/pages/comunautes.dart';
import 'package:aplli/pages/appels.dart';
import 'package:aplli/pages/discussion.dart';
import 'package:aplli/pages/home_page.dart';
import 'package:aplli/pages/gmail_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      colorSchemeSeed: Colors.orange,
      scaffoldBackgroundColor: Colors.white,
    ),
      home: AppGmail(),
      debugShowCheckedModeBanner: false,

  ));
  /*runApp(const MyApp());*/
}

class AppGmail extends StatelessWidget{
  const AppGmail({super.key,});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => AppGmailMain(title: 'Gmail',),
      },
    );
  }
}

class MyApp extends StatelessWidget{
  const MyApp({super.key,});

  @override
  Widget build(BuildContext context) {
    /*return const MaterialApp(
      home: MyHomePage2(),
      debugShowCheckedModeBanner: false,
    );*/
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => MyHomePage2(),
        '/settings' : (context) => const MySettingPage2(),
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Fond noir
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Titre
              Text(
                "Identifiez-vous",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20),

              // Champ Email/Mobile
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "E-mail ou numéro de mobile",
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.grey[900],
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                ),
              ),
              SizedBox(height: 10),

              // Champ Mot de passe
              TextField(
                obscureText: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Mot de passe",
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.grey[900],
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                ),
              ),
              SizedBox(height: 20),

              // Bouton M'identifier
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                ),
                child: Text("M'identifier", style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
              SizedBox(height: 10),

              // Texte OU
              Text("OU", textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
              SizedBox(height: 10),

              // Bouton Utiliser un code d’identification
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[800],
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                ),
                child: Text("Utiliser un code d'identification", style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
              SizedBox(height: 10),

              // Lien Mot de passe oublié ?
              TextButton(
                onPressed: () {},
                child: Text("Mot de passe oublié ?", style: TextStyle(color: Colors.white, decoration: TextDecoration.underline)),
              ),

              // Case à cocher Se souvenir de moi
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                    checkColor: Colors.black,
                    activeColor: Colors.white,
                  ),
                  Text("Se souvenir de moi", style: TextStyle(color: Colors.white)),
                ],
              ),

              SizedBox(height: 20),

              // Texte Abonnez-vous maintenant
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Première visite sur Netflix ? ",
                  style: TextStyle(color: Colors.white),
                  children: [
                    TextSpan(
                      text: "Abonnez-vous maintenant.",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // Texte reCAPTCHA
              Text(
                "Cette page est protégée par Google reCAPTCHA pour nous assurer que vous n'êtes pas un robot.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),

              // Lien En savoir plus
              TextButton(
                onPressed: () {},
                child: Text("En savoir plus.", style: TextStyle(color: Colors.blue, fontSize: 12)),
              ),
            ],
          ),
        ),
      ),
    );
  }
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