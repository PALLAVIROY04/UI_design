import 'package:flutter/material.dart';
import 'package:ui_design/selectedpage/Rspv.dart';

import '../screen/create_card.dart';
import 'BackGround.dart';
import 'MyWork.dart';
import 'Template.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab= 0;
  final List<Widget> screens = [
    Template(),
    Background(),
    MyWork(),
    Rspv(),

  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Template();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: PageStorage(
    bucket: bucket,
    child: currentScreen,
    ),
    floatingActionButton: FloatingActionButton(
    backgroundColor: Color(0xffFBE8C7),
    child: const Icon(Icons.add,size: 30,),
    onPressed: (){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CreateCard ()),
    );
    },
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    bottomNavigationBar: BottomAppBar(
    child: SizedBox(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
    Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    MaterialButton(minWidth: 40,
    onPressed: () {
    setState(() {
    currentScreen = const Template();
    currentTab = 0;
    });
    },
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Icon(Icons.dashboard,
    color: currentTab == 0? Colors.black:Colors.black54,),
    const Text("Templates",style: TextStyle(fontSize: 8,color: Colors.black54),),
    ],
    ),
    ),
    MaterialButton(minWidth: 40,
    onPressed: () {
    setState(() {
    currentScreen = const Background();
    currentTab = 1;
    });
    },
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Icon(Icons.dashboard_rounded,
    color: currentTab == 1? Colors.black:Colors.black54,),
    const Text("Backgrounds",style: TextStyle(fontSize: 8,color: Colors.black54),),
    ],
    ),
    ),
    ],
    ),
    Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    MaterialButton(minWidth: 40,
    onPressed: () {
    setState(() {
    currentScreen = const MyWork();
    currentTab = 2;
    });
    },
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Icon(Icons.dashboard,
    color: currentTab == 2? Colors.black:Colors.black54,),
    const Text("My Work",style: TextStyle(fontSize: 8,color: Colors.black54),),
    ],
    ),
    ),
    MaterialButton(minWidth: 40,
    onPressed: () {
    setState(() {
    currentScreen = const Rspv();
    currentTab = 3;
    });
    },
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Icon(Icons.dashboard_rounded,
    color: currentTab == 3? Colors.black:Colors.black54,),
    const Text("RSVP",style: TextStyle(fontSize: 8,color: Colors.black54),),
    ],
    ),

    ),

    ],
    )
    ],
    )
    ),
    ),
    );
    }
    }


