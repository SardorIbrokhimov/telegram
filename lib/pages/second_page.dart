import 'package:flutter/material.dart';
import 'package:telegram/pages/home_page.dart';
class SecondPage extends StatefulWidget {
  static const String id="second_page";
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Creat New Themes"),
        centerTitle: true,
        actions: [
          Icon(Icons.save),
          SizedBox(width: 20,),

        ],
      ),
      body: Center(
        child: CircleAvatar(
          radius: 100,
          backgroundColor: Colors.blue,
          child: Icon(Icons.add_photo_alternate_outlined,size: 100,color: Colors.red,),


        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: (){
          Navigator.pushReplacementNamed(context, HomePage.id);

        },
        child: Icon(Icons.home_outlined),
      ),
    );
  }
}
