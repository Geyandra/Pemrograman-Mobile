import 'package:first_project/HomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_project/SignUp_Kurir.dart';
import 'package:first_project/homepagekurir.dart';
import 'SignUp.dart';
import 'package:flutter/material.dart';

class SignIn_Kurir extends StatefulWidget {
  const SignIn_Kurir({ Key? key }) : super(key: key);

  @override
  State<SignIn_Kurir> createState() => _SignIn_KurirState();
}

class _SignIn_KurirState extends State<SignIn_Kurir> {
  final formKey = GlobalKey<FormState>();
  final controlEmail = TextEditingController();
  final controlPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double screenHeight=MediaQuery.of(context).size.height;
    final double screenWidth=MediaQuery.of(context).size.width;
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
                Text("Sign In Kurir",
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
                  child: TextFormField(
                    validator: (value) {
                    if (value!.isEmpty) {
                      return ("Data tidak boleh kosong");
                    }
                    return null;
                    },
                    controller: controlEmail,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person, color: Colors.black,),
                        hintText: "E-mail",
                        border: InputBorder.none,
                      
                    ),
                  ),),
                TextFieldContainer(child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return ("Data tidak boleh kosong");
                    }
                    return null;
                  },
                  controller: controlPassword,
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
                    onPressed: LOGIN,
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
                HaveAccount(),
                Container(
                  margin: EdgeInsets.only(bottom: screenHeight*0.23),
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
  void LOGIN() async{
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(email: controlEmail.text, password: controlPassword.text)
        .then((uid) => {
          Navigator.push(context,
  MaterialPageRoute(builder:(context){return homepagekurir();},),),
        });
      } on FirebaseAuthException catch(e){
        print(e);
      }
    }
  }


class HaveAccount extends StatelessWidget {
  const HaveAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Don't Have an Account ?", style: TextStyle(fontSize: 13),),
        GestureDetector(
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context){return SignUpKurir();},),);},
          child: Text(" Sign Up", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),),
        )
        
      ],
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