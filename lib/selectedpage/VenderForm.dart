import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common_widget/AdminDrawer.dart';
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
        drawer: AdminNavBar(),
        appBar: AppBar( backgroundColor: const Color(0xffFBE8C7),
            actions: [
              IconButton(
                icon: const Icon(Icons.notifications,size: 40,),
                onPressed: () {},
              ),
            ],
            toolbarHeight:80,
            ),
        backgroundColor: Color(0xffFBE8C7),

      body: SingleChildScrollView(
      child:  Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(30),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      const Text("Create Vendor",
      style: TextStyle(
      fontSize: 35,
      fontWeight: FontWeight.w900,
      color: Colors.black),
      ),
      SizedBox(
      height: 500,
      width: double.infinity,
      child:  Card(
      color: const Color(0xffFBE8C7),
      elevation: 150,
      child:Container(
      padding: const EdgeInsets.all(20),
      child:Column(
      children: [
      Container(
      decoration: BoxDecoration(color: Colors.white54,
      borderRadius: BorderRadius.circular(16)
      ),
      child:const TextField(
      decoration: InputDecoration(
      border: InputBorder.none,
      fillColor: Color(0xffFBE8C7),
      hintText: "Vendor Name",
      hintStyle: TextStyle(fontSize: 18,color: Colors.black),
      prefixIcon: Icon(
      Icons.person,
      size: 30,
      color: Colors.black,)
      ),
      textAlign: TextAlign.center,
      )
      ),
      const SizedBox(height: 15,),
      Container(
      decoration: BoxDecoration(color: Colors.white54,
      borderRadius: BorderRadius.circular(16)
      ),
      child:const TextField(
      decoration: InputDecoration(
      border: InputBorder.none,
      fillColor: Color(0xffFBE8C7),
      hintText: "Email",
      hintStyle: TextStyle(fontSize: 18,color: Colors.black),
      prefixIcon: Icon(
      Icons.email,
      size: 30,
      color: Colors.black,)
      ),
      textAlign: TextAlign.center,
      )
      ),
      const SizedBox(height: 15,),
      Container(
      decoration: BoxDecoration(color: Colors.white54,
      borderRadius: BorderRadius.circular(16)
      ),
      child:const TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
      border: InputBorder.none,
      fillColor: Color(0xffFBE8C7),
      hintText: "Phone Number",
      hintStyle: TextStyle(fontSize: 18,color: Colors.black),
      prefixIcon: Icon(
      Icons.phone,
      size: 30,
      color: Colors.black,)
      ),
      textAlign: TextAlign.center,
      )
      ),
      const SizedBox(height: 50,),
      Container(
      height: 40,
      width: double.infinity,
      decoration:BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xffF5F5F5)),
      child: TextButton(onPressed: (){},
      child:const Text("Generate Vendor",
      style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,color: Colors.black),
      )
      ),
      ),
      const SizedBox(height: 20,),
      Row(
      children: [
      Container(
      height: 30,
      width: 70,
      decoration:BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xffF5F5F5)),
      child: TextButton(onPressed: (){},
      child:const Text("Active",style: TextStyle(fontSize: 12,color: Colors.black),) )
      ),
      const SizedBox(width: 20,),
      Container(
      height: 30,
      width: 70,
      decoration:BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xffF5F5F5)),
      child: TextButton(onPressed: (){},
      child:const Text("Block",style: TextStyle(fontSize: 12,color: Colors.black),) )
      ),
      const SizedBox(width: 20,),
      Container(
      height: 30,
      width: 70,
      decoration:BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xffF5F5F5)),
      child: TextButton(onPressed: (){},
      child:const Text("Unblock",style: TextStyle(fontSize: 10,color: Colors.black),) )
      )
      ],
      )
      ]
      )
      ),
      )
      )
      ]
      )
      )
    ),
      )
    );
  }
      }
