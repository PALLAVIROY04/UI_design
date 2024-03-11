import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_design/common_widget/drawer.dart';
class GifPage extends StatefulWidget {
  const GifPage({super.key});

  @override
  State<GifPage> createState() => _GifPageState();
}

class _GifPageState extends State<GifPage> {
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
        appBar: AppBar(),
      drawer: NavBar(),
      backgroundColor: Colors.transparent,
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal:30 ),
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.blueGrey.shade100,
            borderRadius: BorderRadius.circular(20)
        ),

        child: const TextField(
          decoration: InputDecoration(
            hintText: "GIF",
            hintStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700
            ),
            suffixIcon: Icon(
              Icons.search,
              size: 50,
              color: Colors.black,),
          ),
          textAlign: TextAlign.center,
        ),
      ),
          const SizedBox(height: 30,),
          Row(
              children: [
                Column(children: [
                  Container(
                    height: 60,
                    width: 140,decoration: BoxDecoration(color: Colors.white70,
                      borderRadius: BorderRadius.circular(8)),
                    child: TextButton(
                      onPressed: (){}, child: const Text("Happy",style: TextStyle(
                        color: Colors.black54,fontSize: 25),),
                    ),
                  ),
                ]
                ),
                const SizedBox(width: 20,),
                Column(children: [
                  Container(
                    height: 60,
                    width: 140,decoration: BoxDecoration(color: Colors.white70,
                      borderRadius: BorderRadius.circular(8)),
                    child: TextButton(
                      onPressed: (){}, child: const Text("Smail",style: TextStyle(
                        color: Colors.black54,fontSize: 25),),
                    ),
                  ),
                ]
                ),
              ]
          ),
          const SizedBox(height: 30,),
          Row(
              children: [
                Column(children: [
                  Container(
                    height: 60,
                    width: 140,decoration: BoxDecoration(color: Colors.white70,
                      borderRadius: BorderRadius.circular(8)),
                    child: TextButton(
                      onPressed: (){}, child: const Text("Funny",style: TextStyle(
                        color: Colors.black54,fontSize: 25),),
                    ),
                  ),
                ]
                ),
                const SizedBox(width: 20,),
                Column(children: [
                  Container(
                    height: 60,
                    width: 140,decoration: BoxDecoration(color: Colors.white70,
                      borderRadius: BorderRadius.circular(8)),
                    child: TextButton(
                      onPressed: (){}, child: const Text("Movie",style: TextStyle(
                        color: Colors.black54,fontSize: 25),),
                    ),
                  ),
                ]
                ),
              ]
          ),
          const SizedBox(height: 30,),
          Row(
              children: [
                Column(children: [
                  Container(
                    height: 60,
                    width: 140,decoration: BoxDecoration(color: Colors.white70,
                      borderRadius: BorderRadius.circular(8)),
                    child: TextButton(
                      onPressed: (){}, child: const Text("Food",style: TextStyle(
                        color: Colors.black54,fontSize: 25),),
                    ),
                  ),
                ]
                ),
                const SizedBox(width: 20,),
                Column(children: [
                  Container(
                    height: 60,
                    width: 140,decoration: BoxDecoration(color: Colors.white70,
                      borderRadius: BorderRadius.circular(8)),
                    child: TextButton(
                      onPressed: (){}, child: const Text("Meme",style: TextStyle(
                        color: Colors.black54,fontSize: 25),),
                    ),
                  ),
                ]
                ),
              ]
          )


              ]
      )

          )



      ),
    );
    }
    }
