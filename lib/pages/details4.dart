import 'package:flutter/material.dart';
import 'package:zerohunger_logistics_app/widget/widget_support.dart';

class Details4 extends StatefulWidget{
  const Details4 ({super.key});

  @override
  State<Details4> createState()=> _Details4State();
}
  class  _Details4State extends State<Details4>{
    int a=1;
    
    @override
    Widget build(BuildContext context){
      return Scaffold(
         appBar: AppBar(
        title: Text('Meat & Poultry Page'),
      ),
        body: 
        SingleChildScrollView(
        child:Container(
          margin: EdgeInsets.only(top: 50.0,left: 20.0,right: 20.0),
          child: Column(children: [
           ClipOval(
            child: Image.asset("images/meat.webp",
                          width: MediaQuery.of(context).size.width/1.2,
                          height: MediaQuery.of(context).size.height/3,fit: BoxFit.fill,),     
                             ),
                    SizedBox(height: 15.0,),
                    Row(
                    
                      children: [
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Meat & Poultry",style: AppWidget.SemiBoldTextFeildStyle(),),
                            Text("Beef,Chicken & Pork",style: AppWidget.HeadTextFeildStyle(),),
                         ],
                       ),
                       Spacer(),
                      GestureDetector(
                        onTap: () {
                          if(a>1){
                          --a;
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
                    Text("At ZeroHunger Logistics, we are committed to providing high-quality meat and poultry products that meet the highest standards of safety and freshness. Our platform connects local farmers and suppliers with consumers and traders, ensuring a seamless supply chain from farm to table. By leveraging our digital platform, we streamline the ordering and delivery process, reducing waste and supporting sustainable practices. ",style: AppWidget.LightTextFeildStyle(),
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
                           Text("\$25/Kilogram",style: AppWidget.HeadTextFeildStyle(),)
                        ],),
                        Container(
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
