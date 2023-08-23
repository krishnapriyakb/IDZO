import 'package:flutter/material.dart';
import 'package:idzo/views/firstPage.dart';
import 'package:idzo/widget/drawer.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20),bottomRight: Radius.circular(20))),
          backgroundColor: Colors.orange,
          title: Text("IDZO"),
          centerTitle: true,
        ),
        drawer: AppDrawer(),
        body: FirstPage(),
        bottomNavigationBar: Container(
        decoration: BoxDecoration(color:Colors.black,borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.only(top:3.0,bottom: 3,right: 8,left: 8),
            child: GNav(gap: 8,backgroundColor: Colors.black,color: Colors.white,
            activeColor: Colors.white,tabBackgroundColor: Colors.orange,
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.favorite,
                text: "favourite",
              ),
              GButton(
                icon: Icons.shopping_bag_sharp,
                text: "Bag",
              ),
              GButton(
                icon: Icons.settings,
                text: "Settings",
              ),
            ]),
          ),
        ));
  }
}
