// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BillingPayment extends StatefulWidget {
  const BillingPayment({super.key});

  @override
  State<BillingPayment> createState() => _BillingPaymentState();
}

class _BillingPaymentState extends State<BillingPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF4F4F7),
        iconTheme: const IconThemeData(
          color: Color(0xFF4C567B),
        ),
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Billings',
            style: TextStyle(
              color: Color(0xFF4C567B),
              fontSize: 25,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
