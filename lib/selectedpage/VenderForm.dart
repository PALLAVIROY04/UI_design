import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class VenderForm extends StatefulWidget {
  const VenderForm({super.key});

  @override
  State<VenderForm> createState() => _VenderFormState();
}

class _VenderFormState extends State<VenderForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/created card.jpeg",
          ),
              fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Stack(
              children:[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 130),
                  child: Container(
                    child: Text("Vendor",style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.3, right: 45,left: 45),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: "Vendor Name",
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        ),

                      ),
                      SizedBox(height: 20,),
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: "Email",
                          prefixIcon: Icon(Icons.mail),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      SizedBox(height: 20,),
                      TextField(
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: "Phone Number",
                          prefixIcon: Icon(Icons.mobile_friendly),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)
                          ),

                        ),

                      ),
                      SizedBox(height: 20,),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: "Address",
                          prefixIcon: Icon(Icons.home_outlined),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)
                          ),

                        ),

                      ),
                      SizedBox(height: 40,),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.height*0.4,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black26),
                        child: TextButton(onPressed: (){

                        }, child: Text("Generate Vendor ID",style: TextStyle(fontSize: 20, color: Colors.black87),),),
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white
                            ),
                            child: TextButton(onPressed: (){},child: Text("Active",style: GoogleFonts.roboto(fontSize:10,fontWeight:FontWeight.w400),),),
                          ),
                          Container(
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white
                            ),
                            child: TextButton(onPressed: (){},child: Text("Block",style: GoogleFonts.roboto(fontSize:10,fontWeight:FontWeight.w400),),),
                          ),Container(
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                            ),
                            child: TextButton(onPressed: (){},child: Text("Unblock",style: GoogleFonts.roboto(fontSize:10,fontWeight:FontWeight.w400),),),
                          )

                        ],
                      )

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
