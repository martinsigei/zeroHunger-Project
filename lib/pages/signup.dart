// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zerohunger_logistics_app/pages/bottomnav.dart';
import 'package:zerohunger_logistics_app/pages/login.dart';
import 'package:zerohunger_logistics_app/widget/widget_support.dart';

class SignUp extends StatefulWidget{
  const SignUp ({super.key});

  @override
  State<SignUp> createState()=> _SignUpState();
}

  class  _SignUpState extends State<SignUp>{

  String email="", Password= "",name="";

  TextEditingController namecontroller=new TextEditingController();

  TextEditingController passwordcontroller=new TextEditingController();

  TextEditingController mailcontroller=new TextEditingController();

  final _formkey=GlobalKey<FormState>();


  registration()async{
if (Password!=null){
  try{
    UserCredential userCredential=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password:Password);

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
       backgroundColor: Colors.redAccent,
      content:Text( "Registered Successfully",style:TextStyle(fontSize: 20.0),),),);
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>BottomNav() ));

  }on FirebaseException catch(e){
    if(e.code=='weak-password'){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
         backgroundColor: Colors.orangeAccent,
        content: Text(
          "Password provided is too weak",
          style: TextStyle(fontSize: 18.0),
          ),),);

    }
    else if(e.code=="email-already-in-use"){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.orangeAccent,
        content: Text("Account Already Exists",
        style: TextStyle(fontSize: 18.0),
        ),),);
    }
  }
}
  }

    @override
    Widget build(BuildContext context){
      return Scaffold(
        body: SingleChildScrollView(  // Added Scrollable View
      child: Container(
        height: MediaQuery.of(context).size.height,
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
        child: Form(
          key: _formkey,
          child: Column(children: [
            SizedBox(height: 11.0,),
            Text("Sign Up",style: AppWidget.HeadTextFeildStyle(),),
            SizedBox(
              height: 30.0,
            ),
            TextFormField(
              controller: namecontroller,
              validator: (value) {
                if(value==null||value.isEmpty){
                  return 'Please Enter Name';
                }
                return null;
              },
              decoration: InputDecoration(hintText: 'Name',hintStyle: AppWidget.SemiBoldTextFeildStyle(),prefixIcon: Icon(Icons.person_2_outlined),
            ),),
            
            SizedBox(
              height: 30.0,
            ),
            TextFormField(
              controller: mailcontroller,
          
              validator: (value) {
                if(value==null||value.isEmpty){
                  return 'Please Enter E-mail';
                }
                return null;
              },
              decoration: InputDecoration(hintText: 'Email',hintStyle: AppWidget.SemiBoldTextFeildStyle(),prefixIcon: Icon(Icons.email_outlined),
            ),),
              SizedBox(
              height: 30.0,
            ),
            TextFormField(
              controller: passwordcontroller,
        
              validator: (value) {
                if(value==null||value.isEmpty){
                  return 'Please Enter Password';
                }
                return null;
              },
              obscureText: true,
              decoration: InputDecoration(hintText: 'Password',hintStyle: AppWidget.SemiBoldTextFeildStyle(),prefixIcon: Icon(Icons.password_rounded),
            ),
            ),
              SizedBox(height: 60.0,),
              GestureDetector(
                onTap: () async{
                  if(_formkey.currentState!.validate()){
                    setState(() {
                      email=mailcontroller.text;
                      name=namecontroller.text;
                      Password=passwordcontroller.text;
                    });
                  }
                  registration();
                },
                child: Material(
                  elevation:5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    width: 200,
                     decoration: BoxDecoration(color: Color.fromARGB(255, 52, 155, 55),borderRadius: BorderRadius.circular(20)),
                    child: Center(child: Text("Sign Up",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Poppins1',fontWeight: FontWeight.bold),)),
                  ),
                ),
              ),
          ],
          ),
        ),
           ),
     ),
     SizedBox(height: 50.0,),
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
        },
        child: Text("Already have an account?Login",style:AppWidget.SemiBoldTextFeildStyle())),
      ],),
    ),
   
        ],),),
        ));
    }
  }

    
