import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common_widget/drawer.dart';
import '../selectedpage/LifeScreen.dart';
import 'greetings.dart';
class CreatesCard extends StatefulWidget {
  const CreatesCard({super.key});

  @override
  State<CreatesCard> createState() => _CreatesCardState();
}

class _CreatesCardState extends State<CreatesCard> {
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
        body:InkWell(
          onTap: (){},
          child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(30),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Create Card",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                          color: Colors.black),),
                    const SizedBox(height: 30,),
                    Row(children: [
                      Column(
                          children: [
                            Container(
                                height: 135,
                                width: 135,
                                decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(width: 1),
                                  color: Colors.white54,
                                  image: DecorationImage(
                                    alignment: Alignment.bottomCenter,
                                    image: AssetImage("assets/images/happy.jpeg",
                                    ),
                                  ),
                                ),
                              child: TextButton(onPressed: (){
                                Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context) =>Life())
                                );
                              }, child: Text("Life",style: GoogleFonts.lato(fontSize: 15,fontWeight:FontWeight.w400),
                                textAlign: TextAlign.center,
                              ),
                              ),
                            ),
                          ]
                      ),
                      const SizedBox(width: 30,),
                      Column(
                          children: [
                            Container(
                                height: 135,
                                width: 135,
                                decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(width: 1),
                                  color: Colors.white54,
                                  image: DecorationImage(
                                    alignment: Alignment.bottomCenter,
                                    image: AssetImage("assets/images/tom.jpeg",
                                    ),
                                  ),
                                ),
                              child: Text("Jokes",style: GoogleFonts.lato(fontSize: 15,fontWeight:FontWeight.w400),
                                textAlign: TextAlign.center,
                              ),


                            ),
                          ]
                      )
                    ]
                    ),
                    const SizedBox(height: 30,),
                    Row(children: [
                      Column(
                          children: [
                            Container(
                                height: 135,
                                width: 135,
                                decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(width: 1),
                                  image: DecorationImage(
                                    alignment: Alignment.bottomCenter,
                                    image: AssetImage("assets/images/five stars.jpeg",
                                    ),
                                  ),
                                  color: Colors.white54,),
                              child: Text("Success",style: GoogleFonts.salsa(fontSize: 15,fontWeight:FontWeight.w400),
                              textAlign: TextAlign.center,),

                            ),
                          ]
                      ),
                      const SizedBox(width: 30,),
                      Column(
                          children: [
                            Container(
                                height: 135,
                                width: 135,
                                decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(width: 1),
                                  color: Colors.white54,
                                    image: DecorationImage(
                                      alignment: Alignment.bottomCenter,
                                      image: AssetImage("assets/images/love.png")
                                    )
                                ),
                              child: Text("Love",style: GoogleFonts.salsa(fontSize: 15,fontWeight:FontWeight.w400),
                              textAlign: TextAlign.center,
                              ),


                            ),
                          ]
                      )
                    ]
                    ),
                    const SizedBox(height: 30,),
                    Column(
                        children: [
                          Container(

                              height: 135,
                              width: 135,
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1),
                            image: DecorationImage(
                              image: AssetImage("assets/images/travel.png",
                            ),
                            )
                          ),
                            child: Text("travel",style: GoogleFonts.lato(fontSize: 15,fontWeight:FontWeight.w400),
                              textAlign: TextAlign.center,
                            ),
                    )
              ]
                    ),
                   IconButton(onPressed: (){
                     Navigator.push(context,
                         MaterialPageRoute(
                             builder: (context) =>Greetings())
                     );
                   }, icon: Icon(Icons.arrow_circle_right_outlined,size: 20,))
                  ]
              )
              ),
        ),
    ),

    );
  }
}
