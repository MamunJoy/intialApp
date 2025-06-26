import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  int counterValue = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Programing Wormhole',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        ),
        actions: [
          Icon(Icons.search,
          color: Colors.white,)
        ],
        
        centerTitle: true,
        leading: Icon(Icons.menu,
            color: Colors.deepOrange,
        ),
      ),

      body: Center(
        child: Text(counterValue.toString(), style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),),
      ),
      
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          counterValue++;
        });
      },
        child: Icon(Icons.add),
      ),
    );
  }
}
