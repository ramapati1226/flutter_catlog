import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_catlog/utils/routs.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name="";
  bool ChangeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
      child: Column(
        children: [
        Image.asset("assets/images/login_image.png",
        fit:BoxFit.cover,
        // height: 500,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          "Welcome $name",
          style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        ),
         SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(children:[
            TextField(
            decoration: InputDecoration(
              hintText: "Enter UserName",
              labelText: "Username",
            ),
            onChanged: (value){
              name = value;
              setState(() {
                
              });
            },
          ),
          
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText:"Enter password",
              labelText:"Password",
              ),
          ),
          SizedBox(
            height: 40.0,
          ),
          // ElevatedButton(child:Text("Login"),
          // style: TextButton.styleFrom(minimumSize: Size(150,40)),
          // onPressed: (){
          //   Navigator.pushNamed(context, MyRoutes.homeRoute);
          // },
          // ),
          InkWell(

            onTap: () async{
              setState(() {
                ChangeButton = true;
              });

              await Future.delayed(Duration(seconds:1));
               Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
         
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: ChangeButton? 50: 150,
            height: 50,
            alignment: Alignment.center,
            child: ChangeButton ? Icon(Icons.done,color: Colors.white,):Text(
              "Login",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            ),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              // shape: ChangeButton ? BoxShape.circle:BoxShape.rectangle,
              borderRadius: BorderRadius.circular(ChangeButton ? 50 :8),

            )
          ),
          ),

          ],),
        )
        
        ],

      ),
      
    ),
    );
  }
}