import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AdminNavBar extends StatelessWidget {
  const AdminNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffFBE8C7),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(accountName: Text("Admin"), accountEmail: Text("Admin10@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset("assets/images/user.admin.png",width: 90,height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffFBE8C7),
              ),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0.1,horizontal: 70),
                  child: Text("Total User",style: GoogleFonts.inter(fontSize:18,fontWeight: FontWeight.w600),),
                ),
                onTap: ()=>null,

              ),
            ),
          ),
    SizedBox(height: 10,),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
      height: 40,
      width: 50,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Color(0xffFBE8C7),
      ),
        child:     ListTile(

              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.1,horizontal: 70),
                child: Text("Active User",style: GoogleFonts.inter(fontSize:18,fontWeight: FontWeight.w600),),
              ),
              onTap: ()=>null,
            ),
      ),
    ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffFBE8C7),
              ),
                    child:   ListTile(

              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.1,horizontal: 70),
                child: Text("Block User",style: GoogleFonts.inter(fontSize:18,fontWeight: FontWeight.w600),),
              ),
              onTap: ()=>null,
            ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffFBE8C7),
              ),
                     child: ListTile(

              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.1,horizontal: 70),
                child: Text("Vendor",style: GoogleFonts.inter(fontSize:18,fontWeight: FontWeight.w600),),
              ),
              onTap: ()=>null,
            ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffFBE8C7),
              ),
            child:ListTile(

              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.1,horizontal: 70),
                child: Text("Setting",style: GoogleFonts.inter(fontSize:18,fontWeight:FontWeight.w600),),
              ),
              onTap: ()=>null,
            ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffFBE8C7),
              ),
            child:ListTile(

              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.1,horizontal: 70),
                child: Text("Log Out",style: GoogleFonts.inter(fontSize:18,fontWeight: FontWeight.w600),),
              ),
              onTap: ()=>null,
            ),
            ),
          ),
        ],
      ),
    );
  }
}
