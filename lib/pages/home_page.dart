import 'package:flutter/material.dart';
import 'package:telegram/pages/second_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Telegram Themes",
          style: TextStyle(color: Colors.black, fontSize: 22),

        ),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications),
          SizedBox(width: 10,),
          Icon(Icons.search),
          SizedBox(width: 10,),
        ],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushReplacementNamed(context, SecondPage.id);
        },
        child:
            Icon(Icons.arrow_forward_outlined),
        //Icon(Icons.edit),
      ),
    );
  }
}
