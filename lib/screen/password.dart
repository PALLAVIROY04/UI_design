import 'package:flutter/material.dart';

import 'login_page.dart';
class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();
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
    child: Stack(
    children:[
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 170),
    child: Container(
    child: Text("Reset Password",style: TextStyle(
    fontSize: 38,
    fontWeight: FontWeight.w800),
    textAlign: TextAlign.center,
    ),
    ),
    ),
    Container(
    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.4, right: 45,left: 45),
    child: Column(
    children: [
    TextField(
    decoration: InputDecoration(
    fillColor: Colors.grey.shade200,
    filled: true,
    hintText: "Password",
    prefixIcon: Icon(Icons.lock),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
    ),
    controller: _password,
    ),
    SizedBox(height: 20,),
    TextField(
    obscureText: true,
    decoration: InputDecoration(
    fillColor: Colors.grey.shade200,
    filled: true,
    hintText: " Confirm Password",
    prefixIcon: Icon(Icons.lock),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
    ),
    controller: _confirmpassword,
    ),
    SizedBox(height: 40,),
    Container(
    height: 50,
    width: MediaQuery.of(context).size.height*0.4,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xffFBD4AC),
    border: Border.all(width: 1),
    ),
    child: TextButton(onPressed: (){
    Navigator.push(context,
    MaterialPageRoute(
    builder: (context) => LoginPage())
    );
    }, child: Text("Done",style: TextStyle(fontSize: 20, color: Colors.black54),),),
    ),
      ]
    ),
        ),
      ]
    ),
    ),
    ),

    );
  }
}
