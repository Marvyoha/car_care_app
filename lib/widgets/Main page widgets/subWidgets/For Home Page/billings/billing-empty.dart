// ignore_for_file: file_names

import 'package:car_care_app/widgets/Main%20page%20widgets/subWidgets/For%20Home%20Page/RequestService.dart';
import 'package:flutter/material.dart';

class BillingEmpty extends StatefulWidget {
  const BillingEmpty({super.key});

  @override
  State<BillingEmpty> createState() => _BillingEmptyState();
}

class _BillingEmptyState extends State<BillingEmpty> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF4F4F7),
        iconTheme: const IconThemeData(
          color: Color(0xFF4C567B),
        ),
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Billings ',
            style: TextStyle(
              color: Color(0xFF4C567B),
              fontSize: 25,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: SizedBox(
                  height: 212,
                  width: 212,
                  child: Image.asset(
                    'lib/asset/images/billing_empty.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 24.5),
              const SizedBox(
                width: 189.67,
                child: Text(
                  '     No Billing History ',
                  style: TextStyle(
                    color: Color(0xFF4C567B),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 7),
              const SizedBox(
                width: 324,
                child: Text(
                  'For the payment with cash method when you recieve your car technician you are excepted to hand the cash over to him.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFBDBDBD),
                    fontSize: 9,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 14),
              Container(
                decoration: ShapeDecoration(
                  color: const Color(0xFFF7F7F9),
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFFF4F4F7)),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PickService(),
                        ),
                      );
                    },
                    child: const Text(
                      'Book a Service',
                      style: TextStyle(
                        color: Color(0xFF4C567B),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
