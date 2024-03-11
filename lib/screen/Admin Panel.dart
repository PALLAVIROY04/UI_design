import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_design/common_widget/AdminDrawer.dart';
import 'package:ui_design/common_widget/drawer.dart';

import '../selectedpage/ListPage.dart';
import '../selectedpage/VenderForm.dart';
class AdminPanel extends StatefulWidget {
  const AdminPanel({super.key});

  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
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
        drawer: AdminNavBar(),
        appBar: AppBar(),
        backgroundColor: Color(0xffFBE8C7),
        body:InkWell(
          onTap: (){},
          child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(30),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Dashboard",
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
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(20)
                        ),
                              child: TextButton(onPressed: (){
                                Navigator.push(context,
                                    MaterialPageRoute(
                                    builder: (context) =>ListPage()));
                              },child: Text("Total Users", style: GoogleFonts.inter
                                (textStyle:Theme.of(context).textTheme.displayLarge,fontSize: 18,fontWeight:FontWeight.w600,color: Colors.black38 ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            )
                          ]
                      ),
                      const SizedBox(width: 30,),
                      Column(
                          children: [
                            Container(
                              height: 135,
                              width: 135,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(20)
                                  
                          ),
                              child:TextButton(onPressed: (){Navigator.push(context,
                                  MaterialPageRoute(
                                  builder: (context) =>VenderForm()));},
                              child: Text("Create Vendor",style: GoogleFonts.inter
                                (textStyle:Theme.of(context).textTheme.displayLarge,fontSize: 18,fontWeight:FontWeight.w600,color: Colors.black38 ),
                                textAlign: TextAlign.center,
                              ),
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
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child:TextButton(onPressed: (){},
                                child: Text("20  \nBlock I'd",style: GoogleFonts.inter
                                  (textStyle:Theme.of(context).textTheme.displayLarge,fontSize: 18,fontWeight:FontWeight.w600,color: Colors.black38 ),
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
                          decoration: BoxDecoration(
                              border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(20)
                          ),
                              child:TextButton(onPressed: (){},
                                child: Text("22  \nActive Users",style: GoogleFonts.inter
                                  (textStyle:Theme.of(context).textTheme.displayLarge,fontSize: 18,fontWeight:FontWeight.w600,color: Colors.black38 ),
                                  textAlign: TextAlign.center,
                                ),
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
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(20)
                        ),
                            child:TextButton(onPressed: (){},
                              child: Text("Id Generated",style: GoogleFonts.inter
                                (textStyle:Theme.of(context).textTheme.displayLarge,fontSize: 18,fontWeight:FontWeight.w600,color: Colors.black38 ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ]
                    ),

                  ]
              )
          ),
        ),
      ),

    );
  }
}
