import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:zerohunger_logistics_app/pages/details.dart';
import 'package:zerohunger_logistics_app/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
   State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza = false, salad = false, burger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0),
        child: SingleChildScrollView( // Add this widget to make the content scrollable
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Hello Martin,", style: AppWidget.boldTextFeildStyle()),
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                )
              ]),
              SizedBox(height: 30.0),
              Text("ZeroHunger Logistics",
                  style: AppWidget.HeadTextFeildStyle()),
              Text("Bridge The Gap From Farm To Table",
                  style: AppWidget.LightTextFeildStyle()),
              SizedBox(height: 20.0),
              Container(margin: EdgeInsets.only(right: 20.0), child: showItem()),
              SizedBox(height: 30.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Details())
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipOval(
                                  child: Image.asset(
                                    "images/fruits.jpeg",
                                    height: 150,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text("Fruits & Vegetables",
                                    style: AppWidget.SemiBoldTextFeildStyle()),
                                SizedBox(height: 5.0),
                                Text(
                                  "Fresh and Healthy",
                                  style: AppWidget.LightTextFeildStyle(),
                                ),
                                SizedBox(height: 5.0),
                                Text("\$25/Kilogram",
                                    style: AppWidget.SemiBoldTextFeildStyle())
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30.0),
                    Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  "images/dairy.jpeg",
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text("Dairy Products",
                                  style: AppWidget.SemiBoldTextFeildStyle()),
                              SizedBox(height: 5.0),
                              Text(
                                "Milk, Cheese, Yoghurt",
                                style: AppWidget.LightTextFeildStyle(),
                              ),
                              SizedBox(height: 5.0),
                              Text("\$40/Litre",
                                  style: AppWidget.SemiBoldTextFeildStyle())
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0,width: 50.0,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  "images/cereals.jpeg",
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text("Grains & Staples",
                                  style: AppWidget.SemiBoldTextFeildStyle()),
                              SizedBox(height: 5.0),
                              Text(
                                "Rice,Flour,Beans,grains",
                                style: AppWidget.LightTextFeildStyle(),
                              ),
                              SizedBox(height: 5.0),
                              Text("\$36/Kilogram",
                                  style: AppWidget.SemiBoldTextFeildStyle())
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30.0),
                    Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  "images/meat.webp",
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text("Meat & Poultry",
                                  style: AppWidget.SemiBoldTextFeildStyle()),
                              SizedBox(height: 5.0),
                              Text(
                                "Beef,Chicken and Pork",
                                style: AppWidget.LightTextFeildStyle(),
                              ),
                              SizedBox(height: 5.0),
                              Text("\$20/Kilogram",
                                  style: AppWidget.SemiBoldTextFeildStyle())
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  "images/discount.jpeg",
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text("Seasonal Discounts",
                                  style: AppWidget.SemiBoldTextFeildStyle()),
                              SizedBox(height: 5.0),
                              Text(
                                "Order before deadline",
                                style: AppWidget.LightTextFeildStyle(),
                              ),
                              SizedBox(height: 5.0),
                              Text("\$20/Product",
                                  style: AppWidget.SemiBoldTextFeildStyle())
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30.0),
                    Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  "images/bulk.jpeg",
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text("Bulk Purchase Deals",
                                  style: AppWidget.SemiBoldTextFeildStyle()),
                              SizedBox(height: 5.0),
                              Text(
                                "Bulk Purchase Deals",
                                style: AppWidget.LightTextFeildStyle(),
                              ),
                              SizedBox(height: 5.0),
                              Text("\$142/Person",
                                  style: AppWidget.SemiBoldTextFeildStyle())
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
               SizedBox(height: 30.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  "images/donate.webp",
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text("Donations",
                                  style: AppWidget.SemiBoldTextFeildStyle()),
                              SizedBox(height: 5.0),
                              Text(
                                "Make Your Donation Now",
                                style: AppWidget.LightTextFeildStyle(),
                              ),
                              SizedBox(height: 5.0),
                              Text("\$/~",
                                  style: AppWidget.SemiBoldTextFeildStyle())
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 30.0),
                    Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  "images/deliver.jpeg",
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text("Delivery",
                                  style: AppWidget.SemiBoldTextFeildStyle()),
                              SizedBox(height: 5.0),
                              Text(
                                "Delivery",
                                style: AppWidget.LightTextFeildStyle(),
                              ),
                              SizedBox(height: 5.0),
                              Text("\$99/Kilometer",
                                  style: AppWidget.SemiBoldTextFeildStyle())
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            icecream = true;
            pizza = false;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: icecream ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/ice-cream.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: icecream ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = true;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: pizza ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/pizza.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: pizza ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            salad = true;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: salad ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              width: 55,
              child: Image.asset(
                "images/salad.png",
                height: 40,
                width: 55,
                fit: BoxFit.cover,
                color: salad ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            salad = false;
            burger = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: burger ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "images/burger.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: burger ? Colors.white : Colors.black,
              ),
            ),
          ),
        )
      ],
    );
  }
}
