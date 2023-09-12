// ignore_for_file: file_names

import 'package:car_care_app/widgets/Main%20page%20widgets/subWidgets/For%20Home%20Page/billings/billing%20payment.dart';
import 'package:flutter/material.dart';

class TabBarInProgress extends StatefulWidget {
  const TabBarInProgress({super.key});

  @override
  State<TabBarInProgress> createState() => _TabBarInProgressState();
}

class _TabBarInProgressState extends State<TabBarInProgress> {
  @override
  Widget build(BuildContext context) {
    return // IN PROGRESS
        SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 26,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BillingPayment(),
                  ),
                );
              },
              child: SizedBox(
                width: 344.79,
                height: 55.24,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                  "lib/asset/images/Toyota stock.png"),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 45),
                          child: Text(
                            'Check Up Service',
                            style: TextStyle(
                              color: Color(0xFF1E2C5C),
                              fontSize: 13,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 45, top: 19),
                          child: Row(
                            children: [
                              const Text(
                                'Toyota Celica ',
                                style: TextStyle(
                                  color: Color(0xFFBDBDBD),
                                  fontSize: 13,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(width: 42),
                              Container(
                                height: 9,
                                width: 10,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "lib/asset/images/calendar.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 2),
                              const Text(
                                'Apr 14 2022',
                                style: TextStyle(
                                  color: Color(0xFFBDBDBD),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(width: 30),
                              const Text(
                                'View Full',
                                style: TextStyle(
                                  color: Color(0xFF4C567B),
                                  fontSize: 8,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
