import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/created card.jpeg",
          ),
          fit: BoxFit.cover
        ),
      ),

      child: Scaffold(
        backgroundColor: Color(0xffFBE8C7),


        appBar: AppBar(leading: Icon(Icons.arrow_back_ios_new),backgroundColor: Color(0xffFBE8C7),),
        body: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Setting",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 40),),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text("Account",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
              ),
              const SizedBox(height: 20,),
              Container(
                width: double.infinity,
                child: Container(
                 decoration: BoxDecoration(
                   border: Border.all(width: 1),
                   borderRadius: BorderRadius.circular(20),
                   color: Color(0xffFBE8C7)
                 ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset("assets/images/user.admin.png",width: 50,height: 40,),
                        const SizedBox(height: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("User",style: GoogleFonts.inter(fontWeight: FontWeight.w400,fontSize: 20),),
                            Text("User@gmail.com",style: GoogleFonts.inter(fontSize: 11,fontWeight: FontWeight.w300),)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Settings",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                    height: 50,
                        width: 50,
                      child: Icon(Icons.language_outlined),
                    ),
                    Text("Language",style: GoogleFonts.inter(fontSize: 20,fontWeight: FontWeight.w400),),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Icon(Icons.contact_page),
                    ),
                    Text("Contact Us",style: GoogleFonts.inter(fontSize: 20,fontWeight: FontWeight.w400),),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Icon(Icons.error_outline_rounded),
                    ),
                    Text("About us",style: GoogleFonts.inter(fontSize: 20,fontWeight: FontWeight.w400),),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Icon(Icons.exit_to_app),
                    ),
                    Text("Log Out",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),

                  ],
                ),
              )

            ],
          ),
        ),
      )
    );
  }
}
