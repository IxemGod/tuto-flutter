import 'package:flutter/material.dart';


class DiscussionPage extends StatefulWidget {
  @override
  _DiscussionPageState createState() => _DiscussionPageState();

}

class _DiscussionPageState extends State<DiscussionPage>{
  Color bg = Colors.white;

  void test(String message){
    print(message);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: bg,
      body:
      ListView(
        padding: const EdgeInsets.all(40),
        children: [
          SizedBox(height: 30,),

          ElevatedButton(
              child: const Text("Button avec élevation"),
              onPressed: (){
                setState((){
                  bg = Colors.blue;
                  test("Button avec élevation");
                });
              },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(40),
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              )
            ),
          ),
          SizedBox(height: 30,),
          OutlinedButton( 
          child: const Text("Button avec Contour"),
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.white,
          ),
          onPressed: (){
            setState((){
              bg = Colors.white;
              test("Button avec Contour");
            });
          },),
          SizedBox(height: 30,),
          TextButton(
              child: const Text("Button avec text"),
              onPressed: (){
                setState((){
                  bg = Colors.red;
                  test("Button avec text");
                });
              },
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red
              )
          ),
          IconButton(
              icon: Icon(Icons.search),
              style: IconButton.styleFrom(
                backgroundColor: Colors.yellow
              ),
            onPressed: (){
              setState((){
                bg = Colors.yellow;
                test("Button Icon");
              });
            },)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        elevation: 0,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        onPressed: (){},
      ),
    );
  }
}