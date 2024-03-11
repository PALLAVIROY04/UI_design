import 'package:flutter/material.dart';
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
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.symmetric(vertical: 25,horizontal: 25),
              child: Column(
                children: [
              const SizedBox(height: 64,),
                  Text("We have sent otp to your gmail",
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800),
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
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black12),
                    child: TextButton(onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => Password())
                      );
                    }, child: Text("Next",style: TextStyle(fontSize: 20, color: Colors.black87),),),
                  ),
              ]
          ),

          ),
        ),
      ),

    );
  }
}
