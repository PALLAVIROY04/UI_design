import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_design/screen/register.dart';

import '../selectedpage/ListPage.dart';
import 'Reset Screen.dart';
import 'create_card.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _gmail = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/pexels-photo-.jpeg"),
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
       backgroundColor: Color(0xffFBE8C7),
        body: SingleChildScrollView(
          child: Stack(
            children:[
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 180),
                 child: Container(
                  child: Text("Login",style: GoogleFonts.inter(
                      fontSize: 45,
                      fontWeight: FontWeight.w800),
                  textAlign: TextAlign.center,
                  ),
                             ),
               ),
              Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.4, right: 45,left: 45),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintText: "Email",
                        prefixIcon: Icon(Icons.mail),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      ),
                      controller: _gmail,
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      ),
                      controller: _password,
                    ),
                   SizedBox(height: 40,),
                   Container(
                     height: 50,
                     width: MediaQuery.of(context).size.height*0.4,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                     border: Border.all(width: 1)),
                     child: TextButton(onPressed: (){
                       Navigator.push(context,
                           MaterialPageRoute(
                               builder: (context) =>CreateCard())
                       );
                     }, child: Text("Login",style: GoogleFonts.inter(fontSize: 20, color: Colors.black87),),),
                   ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      TextButton(onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage())
                        );
                      },

                       child: Text("Register",style: GoogleFonts.inter
                         (textStyle:Theme.of(context).textTheme.displayLarge,fontSize: 18,fontWeight:FontWeight.w300,color: Colors.black38 ),)
                      ),
                    ],
                  ),
                    TextButton(onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => ResetPage ())
                      );
                    },

                        child: Text("Forget Password?",style: GoogleFonts.inter
                          (textStyle:Theme.of(context).textTheme.displayLarge,fontSize: 18,fontWeight:FontWeight.w300,color: Colors.black38 ),)
                    ),
          
                  ],
                ),
              ),
          
                ]
            ),
        ),
        ),



    );
  }
}
