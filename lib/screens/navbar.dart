import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tempest/screens/homepage.dart';
import 'package:tempest/screens/menu_screen.dart';
import 'package:tempest/screens/notification_screen.dart';
import 'package:tempest/screens/setting_screen.dart';

class Navbar extends StatefulWidget {
  const Navbar({ Key? key }) : super(key: key);
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> with SingleTickerProviderStateMixin {
  static  List<Tab> myTabs = <Tab>[
    const Tab(
      icon: Icon(
        Icons.home,
        size: 24.0,
      ),
    ),
    const Tab(
      icon: Icon(
        Icons.widgets_rounded,
        size: 24.0,
      ),
    ),
    Tab(
      child: Container(
        child: Stack(
          children: [
            Icon(Icons.notifications),
            Container(
              alignment: Alignment.center,
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(50)
              ),
              child: const Text("2",style: TextStyle(color: Colors.black,),),
            )
          ],
        ),
      ),

    ),
     const Tab(
      icon: Icon(
        Icons.settings,
        size: 24.0,
      ),
    ),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

 @override
 void dispose() {
   _tabController.dispose();
   super.dispose();
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: TabBarView(
        controller: _tabController,
        children: const [
          Homepage(),
          Menu(),
          Notification_screen(),
          Settings()
        ],
        physics: const NeverScrollableScrollPhysics(),
      ),
      //use stack here
      bottomNavigationBar: Container(
        height: 50,
        margin: EdgeInsets.all(20),
        decoration: const BoxDecoration(
        color: Colors.white30,
           borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35),
          topLeft: Radius.circular(15),
          bottomRight: Radius.circular(35),
          topRight: Radius.circular(15.0)
        ),
        ),
        child: TabBar(
          labelColor: Colors.amber,
          unselectedLabelColor: Colors.white,
          labelStyle: TextStyle(fontSize: 10.0),
          //For Indicator Show and Customization
          indicatorColor: Colors.transparent,
          tabs: myTabs,
          controller: _tabController,
        ),
      ),
      
    );
  }
}