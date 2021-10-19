import 'dart:ui';

import 'package:flutter/material.dart';
import "../utils/myroutes.dart";

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);
  

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
        children: [
           Image.asset("assets/images/shop.png",
          fit: BoxFit.cover
          ),
          SizedBox(
            height: 20.0
          ),
          Text("Welcome to Catalog $name",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),),

          SizedBox(
            height: 25.0 ,
          ),

        Padding(
          padding: const EdgeInsets.all(21.0),
          child: Column(
            children: [
               TextFormField(
                decoration: InputDecoration(
                  labelText: "Username",
                  hintText: "Enter your username ",
                  
                ),
                onChanged: (value){
                  setState(() {
                    
                  });
                  name = value;
                },
               ),

               TextFormField(
                 obscureText: true, //for passwords
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter your password "
                ),
               ),
            ],
          ),
        ),
          
          
          SizedBox(
            height: 20.0 ,
          ),

            Container(
              height: 40,
              width: 80,
              color: Colors.deepPurple,
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
                ),
            ),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pushNamed(context, MyRoutes.home);
          //   }, 
          //   child: Text("Login"),
          //   style: TextButton.styleFrom(
          //     minimumSize: Size(80, 40),
          //     backgroundColor: Colors.deepPurple,
          //     primary: Colors.white
          //   ),
          // ),
             SizedBox(
            height: 50.0 ,
          ),

          Text("Create an account? Sign Up")
        ],
      ),
      ),
    );
  }
}