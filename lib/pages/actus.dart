import 'package:flutter/material.dart';


class ActusPage extends StatefulWidget {
  @override
  _ActuPageState createState() => _ActuPageState();
}

class _ActuPageState extends State<ActusPage>{
  @override
    Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Mon application"),
        elevation: 18.0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.yellow
                ),
                child: Text("Menu")
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text("Discussion"),
              subtitle: Text("Discutez avec vos proches"),
              trailing: Icon(Icons.chevron_right),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.filter_tilt_shift),
              title: Text("Actus"),
              subtitle: Text("Suivez leurs actus"),
              trailing: Icon(Icons.chevron_right),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text("Communautés"),
              subtitle: Text("Vos contactes"),
              trailing: Icon(Icons.chevron_right),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Appels"),
              subtitle: Text("Vos appels récents"),
              trailing: Icon(Icons.chevron_right),
              onTap: (){},
            )
          ],
        ),
      ),
      body: Center(
        child: Text("Flutter"),
      ),
    );
  }
}
