import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common_widget/Otp.dart';
import 'otpPage.dart';
class ResetPage extends StatefulWidget {
  const ResetPage({super.key});

  @override
  State<ResetPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<ResetPage> {
  TextEditingController _gmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/images/created card.jpeg"),
    fit: BoxFit.cover,
    ),
    ),
    child: Scaffold(
    backgroundColor: Colors.transparent,
    body: SingleChildScrollView(
    child: Padding(padding: EdgeInsets.symmetric(vertical: 25,horizontal: 25),
    child: Column(
    children: [
    const SizedBox(height: 64,),
    Text("Forget Your Password?",
      style: GoogleFonts.inter
        (textStyle:Theme.of(context).textTheme.displayLarge,fontSize: 40,fontWeight:FontWeight.w800,
      ),
    textAlign: TextAlign.center,
    ),
    const  SizedBox(height: 15,),
    Text("Please Enter your Gmail continue reset your Password",
    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),
    textAlign: TextAlign.center,
    ),
    Container(
    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1, right: 45,left: 45),
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
      SizedBox(height: 30,),
      Container(
        height: 50,
        width: MediaQuery.of(context).size.height*0.4,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xffFBD4AC),
        border: Border.all(width: 1)),
        child: TextButton(onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => VerificationPage())
          );
        }, child: Text("Next",style: GoogleFonts.inter(fontSize: 24,fontWeight: FontWeight.w600, color: Colors.black87),),),
      ),
      ]
    ),
    ),
    ]
    ),
    ),
    ),
    ),
    );
  }
}
