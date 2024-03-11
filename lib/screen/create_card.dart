import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_design/common_widget/drawer.dart';
import 'GIf.dart';
import 'card.dart';
import 'greetings.dart';
import 'invitation.dart';
class CreateCard extends StatefulWidget {
  const CreateCard({super.key});

  @override
  State<CreateCard> createState() => _CreateCardState();
}

class _CreateCardState extends State<CreateCard> {
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
    child: Text("Create Card",style: TextStyle(
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
                  builder: (context) => CreatesCard())
          );
        }, child: Text("Quotes",style: GoogleFonts.salsa(
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
                  builder: (context) => Greetings())
          );
        }, child: Text("Greetings",style: GoogleFonts.salsa(
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
        );}, child: Text("Invitation",style: GoogleFonts.salsa(
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
        child: TextButton(onPressed: (){Navigator.push(context,
            MaterialPageRoute(
            builder: (context) => GifPage())); }, child: Text("GIF",style: GoogleFonts.salsa(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black87
        ),
        ),
        ),
      )
      ]
    ),
    ),
    ),
    );
  }
}
