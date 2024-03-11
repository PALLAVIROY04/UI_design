import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common_widget/drawer.dart';
class InvitationPage extends StatefulWidget {
  const InvitationPage({super.key});

  @override
  State<InvitationPage> createState() => _InvitationPageState();
}

class _InvitationPageState extends State<InvitationPage> {
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
        appBar: AppBar(),
        drawer: NavBar(),

        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 108),
          child: Center(
            child: Card(
              elevation: 1,
                color: Colors.white12,
                child: Column(
                  children:[
                    Container(
                      margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.02 , left: 7, right: 30 ),
                      width: MediaQuery.of(context).size.height*0.5,
                     // height: 100,
                      //width: 400,
                      child: Text("INVITATION",style: TextStyle(fontSize: 45,
                          fontWeight: FontWeight.w800),
                        textAlign: TextAlign.center,),
                    ),
                    Container(
                      margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.1 , left: 60, right: 60 ),
                      width: MediaQuery.of(context).size.height*0.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white70
                      ),
                      child: TextButton(onPressed: (){},child: Text("Marriage", style: GoogleFonts.salsa( fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87),),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.03 , left: 60, right: 60 ),
                      width: MediaQuery.of(context).size.height*0.7,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white70
                      ),
                      child: TextButton(onPressed: (){},child: Text("Inauguration", style: GoogleFonts.salsa( fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87),),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.03 , left: 60, right: 60 ),
                      width: MediaQuery.of(context).size.height*2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white70
                      ),
                      child: TextButton(onPressed: (){},child: Text("Baby Shower", style: GoogleFonts.salsa( fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87),),),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.height*0.3,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.brown.shade100,
                      backgroundBlendMode: BlendMode.softLight,
                      ),
                      child: TextButton(onPressed: (){},
                        child: Text("Search",style: TextStyle(fontSize: 20, color: Colors.black87),),),
                    ),
                ]
                ),





            ),

          ),
        ),

      ),
    );
  }
}
