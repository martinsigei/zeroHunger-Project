import 'package:flutter/material.dart';

class Details extends StatefulWidget{
  const Details ({super.key});

  @override
  State<Details> createState()=> _DetailsState();
}
  class  _DetailsState extends State<Details>{
    
    @override
    Widget build(BuildContext context){
      return Scaffold(
         appBar: AppBar(
        title: Text('Details Page'),
      ),
        body: Container(
          margin: EdgeInsets.only(top: 50.0,left: 20.0,right: 20.0),
          child: Column(children: [
           ClipOval(
            child: Image.asset("images/fruits.jpeg",
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height/2,fit: BoxFit.fill,),     
                             ),
                                
        ],),),
      );
    }
  }
