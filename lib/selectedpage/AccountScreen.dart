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
       
        appBar: AppBar(leading: Icon(Icons.arrow_back_ios_new),),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Setting",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 34),),
            const SizedBox(height: 30,),
            Text("Account",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
            const SizedBox(height: 20,),
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  Image.asset("assets/images/icon.png",width: 70,height: 70,),
                  const SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("User",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                      Text("User@gmail.com",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 40,),
            Text("Settings",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                  height: 50,
                      width: 50,
                    child: Icon(Icons.language_outlined),
                  ),
                  Text("Language",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(Icons.contact_page),
                  ),
                  Text("Contact Us",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(Icons.error_outline_rounded),
                  ),
                  Text("About us",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(Icons.exit_to_app),
                  ),
                  Text("Log Out",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

                ],
              ),
            )
            
          ],
        ),
      )
    );
  }
}
