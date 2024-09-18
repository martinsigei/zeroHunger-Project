import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zerohunger_logistics_app/pages/bottomnav.dart';
import 'package:zerohunger_logistics_app/pages/forgotpassword.dart';
import 'package:zerohunger_logistics_app/pages/signup.dart';
import 'package:zerohunger_logistics_app/widget/widget_support.dart';

class LogIn extends StatefulWidget{
  const LogIn ({super.key});

  @override
  State<LogIn> createState()=> _LogInState();
}
  class  _LogInState extends State<LogIn>{
  String email="",Password="";

  final _formkey=GlobalKey<FormState>();

  TextEditingController useremailcontroller=new TextEditingController();
  TextEditingController userpasswordcontroller=new TextEditingController();

  userLogin()async{
    try{
      await FirebaseAuth.instance.
      signInWithEmailAndPassword(email: email, password: Password);
       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
       backgroundColor: Colors.redAccent,
      content:Text( "Login Successfully",style:TextStyle(fontSize: 20.0),),),);
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>BottomNav() ));
    }on FirebaseAuthException catch(e){
      if(e.code=='user-not-found'){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            "No User Found for that Email",
            style: TextStyle(fontSize: 18.0,color: Colors.black),
            ),),);
      }else if(e.code=='wrong-password'){
         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            "Wrong Password Provided by User",
            style: TextStyle(fontSize: 18.0,color: Colors.black),
            ),),);
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
            SizedBox(height: 30.0,),
            Text("Login",style: AppWidget.HeadTextFeildStyle(),),
            SizedBox(
              height: 30.0,
            ),
            TextFormField(
              controller: useremailcontroller,
              validator: (value) {
                if(value==null||value.isEmpty){
                  return 'Please Enter Email';
                }
                return null;
              },
              decoration: InputDecoration(hintText: 'Email',hintStyle: AppWidget.SemiBoldTextFeildStyle(),prefixIcon: Icon(Icons.email_outlined),
            ),),
              SizedBox(
              height: 30.0,
            ),
            TextFormField(
              controller: userpasswordcontroller,
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
            SizedBox(height: 20.0,),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
              },
              child: Container(
                alignment: Alignment.topRight,
                child: Text("Forgot Password?",style: AppWidget.SemiBoldTextFeildStyle(),)),
            ),
              SizedBox(height: 60.0,),
              GestureDetector(
                onTap: () {
                  if(_formkey.currentState!.validate()){
                    setState(() {
                      email=useremailcontroller.text;
                      Password=userpasswordcontroller.text;
                    });
                    userLogin();
                  }
                },
                child: Material(
                  elevation:5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    width: 200,
                     decoration: BoxDecoration(color: Color.fromARGB(255, 52, 155, 55),borderRadius: BorderRadius.circular(20)),
                    child: Center(child: Text("LOGIN",style: TextStyle(color: Colors.black,fontSize: 18.0,fontFamily: 'Poppins1',fontWeight: FontWeight.bold),)),
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
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
        },
        child: Text("Don't have an account? Sign Up",style:AppWidget.SemiBoldTextFeildStyle())),
      ],),
    ),
   
        ],),),
        ));
    }
  }
