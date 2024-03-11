import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common_widget/drawer.dart';
import 'invitation.dart';
class Greetings extends StatefulWidget {
  const Greetings({super.key});

  @override
  State<Greetings> createState() => _GreetingsState();
}

class _GreetingsState extends State<Greetings> {
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
        drawer: NavBar(),
        appBar: AppBar(),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Stack(
              children:[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 110),
                  child: Container(
                    child: Text("GREETINGS",style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.25 , left: 60, right: 60 ),
                  width: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                  child: TextButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => InvitationPage())
                    );
                  }, child: Text("Birthday",style: GoogleFonts.salsa(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87

                  )
                  ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.35 , left: 60, right: 60 ),
                  width: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                  child: TextButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => InvitationPage())
                    );
                  }, child: Text("Anniversary",style: GoogleFonts.salsa(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87
                  ),
                  ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.45 , left: 60, right: 60 ),
                  width: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                  child: TextButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => InvitationPage())
                  );}, child: Text("Engagement",style: GoogleFonts.salsa(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87
                  ),
                  ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.55 , left: 60, right: 60 ),
                  width: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                  child: TextButton(onPressed: (){}, child: Text("Wedding",style: GoogleFonts.salsa(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87
                  ),
                  ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.55 , left: 60, right: 60 ),
                  width: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                  child: TextButton(onPressed: (){}, child: Text("Wedding",style: GoogleFonts.salsa(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87
                  ),
                  ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  margin:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.7,left: 150,right: 80) ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black38,
                  ),
                  child: TextButton(onPressed: (){},child: Text("Search",
                    style: GoogleFonts.roboto(fontSize:20,fontWeight:FontWeight.w500,color:Colors.black38),
                    textAlign: TextAlign.center ,),),
                )


              ]
          ),
        ),
      ),
    );
  }
}
