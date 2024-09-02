import 'package:flutter/material.dart';
import 'package:zerohunger_logistics_app/pages/signup.dart';
import 'package:zerohunger_logistics_app/widget/widget_support.dart';

class LogIn extends StatefulWidget{
  const LogIn ({super.key});

  @override
  State<LogIn> createState()=> _LogInState();
}
  class  _LogInState extends State<LogIn>{
    
    @override
    Widget build(BuildContext context){
      return Scaffold(
        body: Container(
          child: Stack(
          children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2.5,
            decoration: BoxDecoration(gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
              (Colors.white),(Colors.white),
            ])),
          ),
    Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
      height: MediaQuery.of(context).size.height/2,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))),
      child: Text(""),
    ),
    Container(
      margin: EdgeInsets.only(left: 20.0,top: 60,right: 20.0),
      child: Column(children: [
        Center(child: Image.asset("images/zeroHunger.jpg",width:MediaQuery.of(context).size.width/1.5,fit: BoxFit.cover,)),
        SizedBox(height: 50.0,),
     Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(20),
       child: Container(
        padding: EdgeInsets.only(left: 20.0,right: 20.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/2,
        decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(20)),
        child: Column(children: [
          SizedBox(height: 30.0,),
          Text("Login",style: AppWidget.HeadTextFeildStyle(),),
          SizedBox(
            height: 30.0,
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Email',hintStyle: AppWidget.SemiBoldTextFeildStyle(),prefixIcon: Icon(Icons.email_outlined),
          ),),
            SizedBox(
            height: 30.0,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(hintText: 'Password',hintStyle: AppWidget.SemiBoldTextFeildStyle(),prefixIcon: Icon(Icons.password_rounded),
          ),
          ),
          SizedBox(height: 20.0,),
          Container(
            alignment: Alignment.topRight,
            child: Text("Forgot Password?",style: AppWidget.SemiBoldTextFeildStyle(),)),
            SizedBox(height: 60.0,),
            Material(
              elevation:5.0,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                width: 200,
                 decoration: BoxDecoration(color: Color.fromARGB(255, 52, 155, 55),borderRadius: BorderRadius.circular(20)),
                child: Center(child: Text("LOGIN",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Poppins1',fontWeight: FontWeight.bold),)),
              ),
            ),
        ],
        ),
           ),
     ),
     SizedBox(height: 50.0,),
      GestureDetector(
        onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
        },
        child: Text("Don't have an account? Sign Up",style:AppWidget.SemiBoldTextFeildStyle())),
      ],),
    ),
   
        ],),),
      );
    }
  }
