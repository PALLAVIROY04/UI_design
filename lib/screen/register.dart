import 'package:flutter/material.dart';

import '../common_widget/Otp.dart';
import 'Admin Panel.dart';
import 'create_card.dart';
import 'login_page.dart';
import 'otpPage.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _name = TextEditingController();
  TextEditingController _gmail = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/b.image.jpg"),
            fit: BoxFit.cover,

        ),
      ),
      child: Scaffold(
        backgroundColor:  Color(0xffFBE8C7),
        body: SingleChildScrollView(
          child: Stack(
              children:[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 180),
                  child: Container(
                    child: Text("Register",style: TextStyle(
                        fontSize: 45,
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
                          hintText: "Name",
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        ),
                        controller: _name,
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
                        controller: _gmail,
                      ),
                      SizedBox(height: 20,),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: "Password",
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        ),
                        controller: _password,
                      ),
                      SizedBox(height: 40,),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.height*0.4,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 1),),
                        child: TextButton(onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => AdminPanel ())
                          );
                        }, child: Text("Register",style: TextStyle(fontSize: 20, color: Colors.black87),),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?"),
                          TextButton(onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage())
                            );
                          }, child: Text("Login",)
                          ),

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
