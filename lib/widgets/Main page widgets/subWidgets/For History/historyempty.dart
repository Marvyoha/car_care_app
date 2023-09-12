import 'package:flutter/material.dart';

import '../For Home Page/RequestService.dart';

class HistoryEmpty extends StatefulWidget {
  const HistoryEmpty({super.key});

  @override
  State<HistoryEmpty> createState() => _HistoryEmptyState();
}

class _HistoryEmptyState extends State<HistoryEmpty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF4F4F7),
        iconTheme: const IconThemeData(
          color: Color(0xFF4C567B),
        ),
        title: const Text(
          '               History',
          style: TextStyle(
            color: Color(0xFF4C567B),
            fontSize: 25,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SizedBox(
        height: 732,
        width: 412,
        child: Center(
          child: Column(children: [
            const SizedBox(height: 107),
            // HISTORY EMPTY IMAGE
            Positioned(
              child: Container(
                width: 182.53,
                height: 199.64,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/asset/images/history empty.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 43,
            ),
            const SizedBox(
              width: 189.67,
              child: Text(
                '    No History Found',
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
            const SizedBox(height: 13),
            // BOOK A SERVICE BUTTON
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PickService(),
                  ),
                );
              },
              child: Container(
                  width: 93,
                  height: 22,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF7F7F9),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 0.50, color: Color(0xFFF4F4F7)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Book a Service',
                      style: TextStyle(
                        color: Color(0xFF4C567B),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
