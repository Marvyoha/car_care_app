// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BillingPaid extends StatefulWidget {
  const BillingPaid({super.key});

  @override
  State<BillingPaid> createState() => _BillingPaidState();
}

class _BillingPaidState extends State<BillingPaid> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
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
      body: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: const Column(
            children: [
              SizedBox(height: 24),
              SizedBox(
                width: 147.80,
                child: Text(
                  'Repair Service',
                  style: TextStyle(
                    color: Color(0xFF4C567B),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
