import 'package:first_project/HomePage.dart';
import 'package:first_project/SignIn.dart';
import 'package:first_project/SignIn_Kurir.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'user.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  final controlFullname = TextEditingController();
  final controlPhoneNumber = TextEditingController();
  final controlEmail = TextEditingController();
  final controlPassword = TextEditingController();
  final controlconfirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 193, 223, 240),
        width: double.infinity,
        height: size.height,
        child: SingleChildScrollView(
          child: Stack(
            // alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                child: Image.asset(
                  "assets/1.png",
                  width: 80,
                ),
                bottom: 0,
              ),
              Positioned(
                child: Image.asset(
                  "assets/2.png",
                  width: 80,
                ),
                right: 0,
              ),
              Container(
                margin: EdgeInsets.only(top: 90),
                // color: Colors.green,
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/Group 33332.png",
                  width: 300,
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    // color: Colors.blue,
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      "assets/Group 1.png",
                      width: 100,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Image.asset("assets/4.png"),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 40),
                      child: Text("Enter your email and password",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15))),
                  TextFieldContainer(
                    child: TextFormField(
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return ("Data tidak boleh kosong");
                        }
                        return null;
                      }),
                      controller: controlFullname,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        hintText: "Fullname",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  TextFieldContainer(
                    child: TextFormField(
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return ("Data tidak boleh kosong");
                        }
                        return null;
                      }),
                      controller: controlPhoneNumber,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.phone_android,
                          color: Colors.black,
                        ),
                        hintText: "Phone Number",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  TextFieldContainer(
                    child: TextFormField(
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return ("Data tidak boleh kosong");
                        }
                        return null;
                      }),
                      controller: controlEmail,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        hintText: "E-mail",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  TextFieldContainer(
                      child: TextFormField(
                    validator: ((value) {
                      if (value!.isEmpty) {
                        return ("Data tidak boleh kosong");
                      }
                      return null;
                    }),
                    controller: controlPassword,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        suffixIcon:
                            Icon(Icons.visibility, color: Colors.black)),
                  )),
                  TextFieldContainer(
                      child: TextFormField(
                    validator: ((value) {
                      if (value!.isEmpty) {
                        return ("Data tidak boleh kosong");
                      }
                      if (controlconfirmPassword.text != controlPassword.text) {
                        return "Password Berbeda";
                      }
                      return null;
                    }),
                    controller: controlconfirmPassword,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Confirm Password",
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        suffixIcon:
                            Icon(Icons.visibility, color: Colors.black)),
                  )),
                  Container(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: ElevatedButton(
                      onPressed: signUp,
                      // {Navigator.push(context, MaterialPageRoute(builder: (context){return WelcomePage();},),);},
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 25),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          onPrimary: Colors.white,
                          minimumSize: Size(320, 50),
                          shape: StadiumBorder()),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Already Have an Account ?",
                        style: TextStyle(fontSize: 13),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SignIn();
                              },
                            ),
                          );
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SignIn_Kurir();
                              },
                            ),
                          );
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "Kurir",
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 51),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 193, 223, 240)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void signUp() async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: controlEmail.text.trim(),
              password: controlPassword.text.trim())
          .then((uid) => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
                    },
                  ),
                ),
              });
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    final data = Data(
        Fullname: controlFullname.text,
        PhoneNumber: int.parse(controlPhoneNumber.text),
        Email: controlEmail.text);
    createData(data);
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(29)),
      child: child,
    );
  }
}

Future createData(Data data) async {
  final docData = FirebaseFirestore.instance.collection("User").doc();
  data.ID = docData.id;
  final json = data.toJson();
  docData.set(json);
}
