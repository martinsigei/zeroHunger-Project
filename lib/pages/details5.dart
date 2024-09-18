import 'package:flutter/material.dart';
import 'package:zerohunger_logistics_app/widget/widget_support.dart';

class Details5 extends StatefulWidget{
  final String price;  // Add this
  final String name; 
  const Details5 ({
    Key? key,
    required this.price,
    required this.name,
  }) : super(key: key);

  @override
  State<Details5> createState()=> _Details5State();
}
  class  _Details5State extends State<Details5>{
    int a=1,total=10;
    
    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    total=int.parse(widget.price);
  }

    @override
    Widget build(BuildContext context){
      return Scaffold(
         appBar: AppBar(
        title: Text('Seasonal Discounts Page'),
      ),
        body: 
        SingleChildScrollView(
        child:Container(
          margin: EdgeInsets.only(top: 50.0,left: 20.0,right: 20.0),
          child: Column(children: [
           ClipOval(
            child: Image.asset("images/discount.jpeg",
                          width: MediaQuery.of(context).size.width/1.2,
                          height: MediaQuery.of(context).size.height/3,fit: BoxFit.fill,),     
                             ),
                    SizedBox(height: 15.0,),
                    Row(
                    
                      children: [
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Seasonal Discounts",style: AppWidget.SemiBoldTextFeildStyle(),),
                            Text("Order before deadline",style: AppWidget.HeadTextFeildStyle(),),
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
                    Text("Our Seasonal Discounts page offers fantastic savings on a wide range of groceries and essentials throughout the year. Whether you're preparing for a special occasion, stocking up for the season, or just looking to enjoy fresh produce at unbeatable prices, our discounts ensure you get the best value. Check back regularly to find limited-time offers and exclusive deals tailored to each season, all while supporting local farmers and contributing to a more sustainable food system. ",style: AppWidget.LightTextFeildStyle(),
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
