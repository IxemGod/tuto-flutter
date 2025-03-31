import 'package:aplli/pages/setting_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key,});

  @override
  State<MyHomePage2> createState() => _MyHomePageState2();
}

class _MyHomePageState2 extends State<MyHomePage2>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body : Center(
        child: ElevatedButton(
            onPressed: (){
              /*Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context){
                        return MySettingPage2();
                      }
                  )
              );*/
              Navigator.pushNamed(
                  context,
                  '/settings'
              );
            },
            child: Text("Page principal")),
      )
    );
  }
}