import 'package:flutter/material.dart';
import 'package:zerohunger_logistics_app/widget/widget_support.dart';

class Wallet extends StatefulWidget{
  const Wallet ({super.key});

  @override
  State<Wallet> createState()=> _WalletState();
}
  class  _WalletState extends State<Wallet>{

   // int selectedIndex;

    int price=0;
    
    @override
    Widget build(BuildContext context){
      return Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 60.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Material(
            elevation: 2.0,
            child: Container(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Material(child: Center(child: Text("Wallet",style: AppWidget.HeadTextFeildStyle(),))))),
              SizedBox(height: 30.0,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Color(0xFF2F2F2F2)),
                child: Row(children: [
                Image.asset("images/wallet.png",height: 60,width: 60,fit: BoxFit.cover,
                ),
                SizedBox(width: 40.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Your Wallet",style: AppWidget.LightTextFeildStyle(),),
                  SizedBox(height: 5.0,),
                  Text("\Ksh"+"100",style: AppWidget.boldTextFeildStyle(),),
                ],)
                ],),
              ),
              SizedBox(height: 20.0,),
             Padding(
               padding: const EdgeInsets.only(left: 20.0),
               child: Text("Add Money",style: AppWidget.SemiBoldTextFeildStyle(),),
             ),
             SizedBox(height: 10.0,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color:Color(0xFFE9E2E2)),borderRadius: BorderRadius.circular(5),
                  ),
                child: Text("\Ksh"+"100",style: AppWidget.SemiBoldTextFeildStyle(),
                ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color:Color(0xFFE9E2E2)),borderRadius: BorderRadius.circular(5),
                  ),
                child: Text("\Ksh"+"500",style: AppWidget.SemiBoldTextFeildStyle(),
                ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color:Color(0xFFE9E2E2)),borderRadius: BorderRadius.circular(5),
                  ),
                child: Text("\Ksh"+"1000",style: AppWidget.SemiBoldTextFeildStyle(),
                ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color:Color(0xFFE9E2E2)),borderRadius: BorderRadius.circular(5),
                  ),
                child: Text("\Ksh"+"2000",style: AppWidget.SemiBoldTextFeildStyle(),
                ),
                ),
            ],
            ),
            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              padding: EdgeInsets.symmetric(vertical: 12.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFF008080),borderRadius: BorderRadius.circular(8),
              ),
              child: Center(child: Text("Add Money",style: TextStyle(color:Colors.white,fontSize: 16.0, fontFamily: 'Poppins',fontWeight: FontWeight.bold),),),
            )
          ],
        ),),
      );
    }
  }

















// import 'package:flutter/material.dart';
// import 'package:flutter_paystack/flutter_paystack.dart';
// import 'package:zerohunger_logistics_app/widget/widget_support.dart';

// class Wallet extends StatefulWidget {
//   const Wallet({super.key});

//   @override
//   State<Wallet> createState() => _WalletState();
// }

// class _WalletState extends State<Wallet> {
//   final plugin = PaystackPlugin();
//   int price = 0;

//   @override
//   void initState() {
//     super.initState();
//     // Initialize Paystack with your public key
//     plugin.initialize(publicKey: 'your_paystack_test_public_key'); // Replace with your Paystack test public key
//   }

//   void startPayment(int amount) async {
//     // Create a charge object
//     Charge charge = Charge()
//       ..amount = amount * 100 // Amount is in kobo
//       ..email = 'user@example.com' // Replace with user's email
//       ..currency = 'KES' // Currency
//       ..reference = DateTime.now().millisecondsSinceEpoch.toString();

//     // Use Paystack plugin to checkout
//     CheckoutResponse response = await plugin.checkout(
//       context,
//       method: CheckoutMethod.card, // Select the payment method
//       charge: charge,
//       fullscreen: false,
//       logo: Image.asset("images/wallet.png", height: 60, width: 60),
//     );

//     // Handle the response from Paystack
//     if (response.status == true) {
//       // Payment was successful
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Payment Successful')),
//       );
//     } else {
//       // Payment failed
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Payment Failed: ${response.message}')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         margin: EdgeInsets.only(top: 60.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Material(
//               elevation: 2.0,
//               child: Container(
//                 padding: EdgeInsets.only(bottom: 10.0),
//                 child: Material(
//                   child: Center(
//                     child: Text(
//                       "Wallet",
//                       style: AppWidget.HeadTextFeildStyle(),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 30.0),
//             Container(
//               padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(color: Color(0xFF2F2F2F2)),
//               child: Row(
//                 children: [
//                   Image.asset(
//                     "images/wallet.png",
//                     height: 60,
//                     width: 60,
//                     fit: BoxFit.cover,
//                   ),
//                   SizedBox(width: 40.0),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Your Wallet",
//                         style: AppWidget.LightTextFeildStyle(),
//                       ),
//                       SizedBox(height: 5.0),
//                       Text(
//                         "\Ksh" + "100",
//                         style: AppWidget.boldTextFeildStyle(),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20.0),
//             Padding(
//               padding: const EdgeInsets.only(left: 20.0),
//               child: Text(
//                 "Add Money",
//                 style: AppWidget.SemiBoldTextFeildStyle(),
//               ),
//             ),
//             SizedBox(height: 10.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 for (var amount in [100, 500, 1000, 2000])
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         price = amount;
//                       });
//                     },
//                     child: Container(
//                       padding: EdgeInsets.all(5),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Color(0xFFE9E2E2)),
//                         borderRadius: BorderRadius.circular(5),
//                       ),
//                       child: Text(
//                         "\Ksh$amount",
//                         style: AppWidget.SemiBoldTextFeildStyle(),
//                       ),
//                     ),
//                   ),
//               ],
//             ),
//             SizedBox(height: 20.0),
//             GestureDetector(
//               onTap: () {
//                 startPayment(price);
//               },
//               child: Container(
//                 margin: EdgeInsets.symmetric(vertical: 20.0),
//                 padding: EdgeInsets.symmetric(vertical: 12.0),
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   color: Color(0xFF008080),
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: Center(
//                   child: Text(
//                     "Add Money",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 16.0,
//                       fontFamily: 'Poppins',
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
