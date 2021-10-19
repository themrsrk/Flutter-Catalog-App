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

            InkWell(
              onTap:  () async{
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.home);
              },
              splashColor: Colors.white,
              
              child: AnimatedContainer(
              
                duration: Duration(seconds: 1),
                height: 40,
                width: changeButton?40:110,
                alignment: Alignment.center,
                
                // color: Colors.deepPurple,
                child: changeButton? Icon(Icons.done, color: Colors.white,): Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(changeButton?50:8),
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