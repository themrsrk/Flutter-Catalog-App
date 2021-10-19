import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {
  
  const Homepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String hello = "Hola";
    var num1 = "20";
    return Scaffold(
      appBar: AppBar(
          title: const Text("Catalog App"),
          backgroundColor: Colors.deepPurple,
      ),

      body:Center(
        child: Text("$hello Iphone XS Max $num1")
        ),

        drawer: const Drawer(),
      
    );
  }
}