import 'package:flutter/material.dart';
import 'package:zerohunger_logistics_app/pages/home.dart';
import 'package:zerohunger_logistics_app/pages/order.dart';
import 'package:zerohunger_logistics_app/pages/profile.dart';
import 'package:zerohunger_logistics_app/pages/wallet.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNav extends StatefulWidget{
  const BottomNav ({super.key});

  @override
  State<BottomNav> createState()=> _BottomNavState();
}
  class _BottomNavState extends State<BottomNav>{
    int currentTabIndex=0;

    late List<Widget>pages;
    late Widget currentPage;
    late Home homepage;
    late Profile profile;
     late Order order;
      late PayBillsPage wallet;

      @override
    void initState(){
      homepage=Home();
      order=Order();
      profile=Profile();
      wallet=PayBillsPage();
      pages=[homepage,order,wallet,profile];
      super.initState();
    }

    @override
    Widget build(BuildContext context){
      return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          backgroundColor: Colors.black,
          color: Colors.white,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index){
            setState(() {
              currentTabIndex=index;
            });
          },
          items:[
        Icon(
          Icons.home_outlined,
          color: Colors.black,
        ),
        Icon(Icons.shopping_bag_outlined,color: Colors.black,),
        Icon(Icons.wallet_outlined,color: Colors.black,),
        Icon(Icons.person_outlined,color: Colors.black,),
        ]),
        body: pages[currentTabIndex],
      );
    }
  }
