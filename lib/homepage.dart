import 'dart:ui';
import 'package:app1/gridview.dart';
import 'package:app1/guitars.dart';
import 'package:app1/screens/account.dart';
import 'package:app1/screens/homepagee.dart';
import 'package:app1/screens/like.dart';
import 'package:app1/screens/search.dart';
import 'package:flutter/material.dart';


class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
   List pages=[
    homepagee(),
    search(),
    like(),
     account(),
  ];

 int selectedindex=0;
  void ontap(int index){
    setState(() {
      selectedindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
         onTap: ontap,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
           currentIndex: selectedindex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.apps), label: "Home"), // home
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: "Search"), //search
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Like"), //Likes
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: "Mypage"), //my
          ]),
     
    );
}
}































