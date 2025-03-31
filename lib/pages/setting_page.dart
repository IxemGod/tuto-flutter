import 'package:aplli/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySettingPage2 extends StatefulWidget {
  const MySettingPage2({super.key,});

  @override
  State<MySettingPage2> createState() => _MySettingPageState2();
}

class _MySettingPageState2 extends State<MySettingPage2>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text("Setting Page"),
        ),
        body : Center(
          child: ElevatedButton(
              onPressed: (){
                Navigator.pop(
                  context
                );
              },
              child: Text("Page de paramêtre")),
        )
    );
  }
}