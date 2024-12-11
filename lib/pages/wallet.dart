import 'package:flutter/material.dart';
import 'package:flutter_paystack/flutter_paystack.dart';

class PayBillsPage extends StatelessWidget {
  final TextEditingController billNumberController = TextEditingController();
  final TextEditingController accountNumberController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  final List<String> billTypes = ['Delivery Fee', 'Orders', 'Service Fees', 'Payment Processing Fees', 'Driver Tipping'];
  String selectedBillType = 'Delivery Fee';

  final PaystackPlugin paystackPlugin = PaystackPlugin();

  @override
  Widget build(BuildContext context) {
   
    paystackPlugin.initialize(publicKey: 'pk_test_318b4240307ce9ac4bf79eb255bf1616f06493aa');

    return Scaffold(
      appBar: AppBar(
        title: Text('Pay Bills'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: selectedBillType,
              onChanged: (String? newValue) {
                selectedBillType = newValue!;
              },
              items: billTypes.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: billNumberController,
              decoration: InputDecoration(
                labelText: 'Bill Number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: accountNumberController,
              decoration: InputDecoration(
                labelText: 'Account Number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Amount',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () async {
                final amountInKobo = int.parse(amountController.text) * 100;
                final email = 'user@gmail.com';  

                try {
                  final charge = Charge()
                    ..amount = amountInKobo
                    ..email = email
                    ..reference = 'ref_${DateTime.now().millisecondsSinceEpoch}'
                    ..currency = 'NGN';

                  final response = await paystackPlugin.checkout(
                    context,
                    charge: charge,
                    method: CheckoutMethod.card,
                  );

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(response.status ? 'Payment Successful!' : 'Payment Failed!')),
                  );
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Error: $e')),
                  );
                }
              },
              child: Text('Send Payment'),
            ),
          ],
        ),
      ),
    );
  }
}
