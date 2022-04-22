// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 193, 223, 240),
        width: double.infinity,
        height: size.height,
        child:SingleChildScrollView(
          child: Stack(
            // alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                child: Image.asset("assets/1.png", width: 80,),
                bottom: 0,
                ),
                Positioned(
                  child: Image.asset("assets/2.png", width: 80,),
                  right: 0,
                ),
                Container(
              margin: EdgeInsets.only(top: 90),
              // color: Colors.green,
              alignment: Alignment.topCenter,
              child: Image.asset("assets/Group 33332.png", width: 300,),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  // color: Colors.blue,
                  alignment: Alignment.topCenter,
                  child: Image.asset("assets/Group 1.png", width: 100,),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Image.asset("assets/4.png"),
                ),
                Text("Sign In",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: Text("Enter your email and password", 
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 15))),
                TextFieldContainer(
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person, color: Colors.black,),
                        hintText: "E-mail",
                        border: InputBorder.none,
                      
                    ),
                  ),),
                TextFieldContainer(child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    
                    hintText: "Password",
                    border: InputBorder.none,
                    icon: Icon(Icons.lock, color: Colors.black,),
                    suffixIcon: Icon(Icons.visibility, color: Colors.black)
                  ),
                )),
                Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    // {Navigator.push(context, MaterialPageRoute(builder: (context){return WelcomePage();},),);},
                    child: Text("Login", style: TextStyle(fontSize: 25),),
                    style:
                    ElevatedButton.styleFrom(
                      primary: Colors.black,
                      onPrimary: Colors.white,
                      minimumSize: Size(320, 50),
                      shape: StadiumBorder()
                    ),
                    ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't Have an Account ?", style: TextStyle(fontSize: 13),),
                    GestureDetector(
                      child: Text(" Sign Up", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),),
                    )
        
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 51),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 193, 223, 240)
                    ),
                ),
              ],
            )
        
            ],
          ),
        ),

      ),
      
    );
  }
}

class TextFieldContainer extends StatelessWidget { 
  final Widget child;
  const TextFieldContainer({
    Key? key, required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(29)
      ),
      child: child,
    );
    
  }
}