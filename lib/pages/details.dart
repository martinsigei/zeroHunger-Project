import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:zerohunger_logistics_app/service/database.dart';
import 'package:zerohunger_logistics_app/service/shared_pref.dart';
import 'package:zerohunger_logistics_app/widget/widget_support.dart';

class Details extends StatefulWidget{
   String price;  // Add this
   String name; 
   String image; 
   Details ({
    Key? key,
    required this.price,
    required this.name,
    required this.image,
  }) : super(key: key);
  

  @override
  State<Details> createState()=> _DetailsState();
}
  class  _DetailsState extends State<Details>{
    int a=1,total=10;
    String? id;

    getthesharedpref()async{
      id=await SharedPreferenceHelper().getUserId();
      setState(() {
        
      });
    }
    ontheLoad()async{
      await getthesharedpref();
      setState(() {
        
      });
    }

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ontheLoad();
    total=int.parse(widget.price);
  }
    
    @override
    Widget build(BuildContext context){
      return Scaffold(
         appBar: AppBar(
        title: Text('Fruits & Vegetables Page'),
      ),
        body: 
        SingleChildScrollView(
        child:Container(
          margin: EdgeInsets.only(top: 50.0,left: 20.0,right: 20.0),
          child: Column(children: [
           ClipOval(
            child: Image.asset("images/fruits.jpeg",
                          width: MediaQuery.of(context).size.width/1.2,
                          height: MediaQuery.of(context).size.height/3,fit: BoxFit.fill,),     
                             ),
                    SizedBox(height: 15.0,),
                    Row(
                    
                      children: [
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Fruits & Vegetables",style: AppWidget.SemiBoldTextFeildStyle(),),
                            Text("Fresh and Healthy",style: AppWidget.HeadTextFeildStyle(),),
                         ],
                       ),
                       Spacer(),
                      GestureDetector(
                        onTap: () {
                          if(a>1){
                          --a;
                          total=total-int.parse(widget.price);
                          }
                          setState(() {
                            
                          });
                        },
                        child: Container(
                        
                          decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8)),
                          child: Icon(Icons.remove,color: Colors.white,),
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      Text(a.toString(),style: AppWidget.SemiBoldTextFeildStyle(),),
                       SizedBox(width: 20.0,),
                      GestureDetector(
                        onTap: () {
                          ++a;
                          total=total+int.parse(widget.price);
                          setState(() {
                            
                          });
                        },
                        child: Container(
                        
                          decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8)),
                          child: Icon(Icons.add,color: Colors.white,),
                        ),
                      )
                    ],),
                    SizedBox(height: 20.0,),
                    Text("At ZeroHunger Logistics, our focus on fruits and vegetables is driven by a commitment to providing fresh, locally sourced produce directly from farmers to consumers and traders. By bridging the gap between farm and table, we aim to ensure that quality, nutritious fruits and vegetables are accessible to everyone, promoting healthier diets and supporting local agriculture. Our streamlined digital platform enables individuals and traders to place bulk orders efficiently, allowing farmers to respond promptly and drivers to deliver goods swiftly. This approach not only reduces food waste but also enhances food security by minimizing the time produce spends in transit, preserving its freshness and nutritional value.",style: AppWidget.LightTextFeildStyle(),
                    ),
                    SizedBox(height: 30.0,),
                    Row(children: [
                      Text("Delivery Time",style: AppWidget.SemiBoldTextFeildStyle(),),
                       SizedBox(width: 25.0,),
                      Icon(Icons.alarm,color: Colors.black54,),
                      SizedBox(width: 5.0,),
                      Text("30 min",style: AppWidget.SemiBoldTextFeildStyle(),)
                      ],
                    ),
                    //Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text("Total Price",style: AppWidget.SemiBoldTextFeildStyle(),),
                           Text("\Ksh "+total.toString(),style: AppWidget.HeadTextFeildStyle(),)
                        ],),
                        GestureDetector(
                          onTap: () async{
                            if (id != null && id!.isNotEmpty) {
                            Map<String,dynamic>addFoodtoCart={
                              "Name":widget.name,
                              "Quantity":a.toString(),
                              "Total":total.toString(),
                              "Image":widget.image
                            };
                            await DatabaseMethods().addFoodtoCart(addFoodtoCart, id!);
                                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.orangeAccent,
                            content: Text(
                              "Food Added To Cart",
                              style: TextStyle(fontSize: 18.0),
                              ),),);
                                            } else {
                          // Handle the case where userId is null or empty
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Failed to add to cart. User not logged in!")),
                          );
                          }
  

                          },
                          
                          child: Container(
                             width: MediaQuery.of(context).size.width/2,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                              Text("Add to Cart",style: TextStyle(color: Colors.white,fontSize: 16.0,fontFamily: 'Poppins'),),
                              SizedBox(width: 30.0,),
                              Container(
                          
                               
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  color: Colors.black45,borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                              ),
                               SizedBox(width: 10.0,),
                            ],),
                          
                          ),
                        )
                      ],),
                    )
        ],
        ),
        ),
      ),
      );
    }
  }
