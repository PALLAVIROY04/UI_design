import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_design/common_widget/Otp.dart';
import 'package:ui_design/screen/password.dart';

import 'login_page.dart';
class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/images/created card.jpeg"),
    fit: BoxFit.cover,
    ),
    ),
      child: Scaffold(
        backgroundColor: Color(0xffFBE8C7),
        body: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.symmetric(vertical: 25,horizontal: 25),
              child: Column(
                children: [
              const SizedBox(height: 64,),
                  Text("We have sent otp to your gmail",
                    style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                  const  SizedBox(height: 15,),
                  Text("Please check your Gmail continue reset your Password",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),
                      textAlign: TextAlign.center,
                  ),
                  Container(
                    child: OtpForm(),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.height*0.4,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xffFBD4AC),

                    border: Border.all(width: 1)
                    ),
                    child: TextButton(onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => Password())
                      );
                    }, child: Text("Verify",style: GoogleFonts.inter(fontSize: 24,fontWeight: FontWeight.w600 ,color: Colors.black54),),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("If you don't recieve a code?",style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w400 )),
                      TextButton(onPressed: () {},

                          child: Text("Resend",style: GoogleFonts.inter
                            (textStyle:Theme.of(context).textTheme.displayLarge,fontSize: 16,fontWeight:FontWeight.w600,color: Colors.black38 ),)
                      ),
                    ],
                  ),
              ]
          ),

          ),
        ),
      ),

    );
  }
}
