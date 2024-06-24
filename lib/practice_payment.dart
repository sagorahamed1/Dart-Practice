import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaymentScreen(amount: '100', itemName: "Test",),
    );
  }
}




class PaymentScreen extends StatelessWidget {
  final String amount;
  final String itemName;

  PaymentScreen({required this.amount, required this.itemName});

  Future<void> processPayment() async {
    // Construct payment payload
    final payload = {
      'merchant_id': '24301547',
      'merchant_key': 'ww3caqxbo69ez',
      'amount': amount,
      'item_name': itemName,
      // Add other required parameters
    };

    var uri = Uri.parse('https://www.payfast.co.za/onsite/process');
    final response = await http.post(uri,
      body: json.encode(payload),
      headers: {'Content-Type': 'application/json'},
    );

    print("====> response : ${payload} \n ${response.body}  \n status code : ${response.statusCode}");
    try{
      if (response.statusCode == 200) {

        print("====> response : ${payload} \n ${response.body}  \n status code : ${response.statusCode}");
      } else {
      }
    }catch(e,s){
      print("error e : $e");
      print("error s : $s");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Make Payment'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => processPayment(),
          child: const Text('Pay Now'),
        ),
      ),
    );
  }
}