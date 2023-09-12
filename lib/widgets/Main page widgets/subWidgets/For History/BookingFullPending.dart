// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BookingInProgress extends StatefulWidget {
  const BookingInProgress({Key? key}) : super(key: key);

  @override
  State<BookingInProgress> createState() => _BookingInProgressState();
}

class _BookingInProgressState extends State<BookingInProgress> {
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
      body: Column(
        children: [
          const SizedBox(height: 26),
          // HEADER
          Center(
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Booking In Progress',
                      style: TextStyle(
                        color: Color(0xFFF09D38),
                        fontSize: 25,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              "lib/asset/images/in progress_big.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      width: 64,
                      height: 22,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 0.50, color: Color(0xFF1E2C5C)),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Track car',
                          style: TextStyle(
                            color: Color(0xFF4C567B),
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )),
                )
              ],
            ),
          ),
          const Divider(
            height: 17,
          ),
          // BOOKING TYPE
          const Padding(
            padding: EdgeInsets.only(right: 300),
            child: Text(
              'Booking',
              style: TextStyle(
                color: Color(0xFFBDBDBD),
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 225),
            child: Text(
              'Checkup Service',
              style: TextStyle(
                color: Color(0xFF4C567B),
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 22),
          // YOUR CAR
          const Padding(
            padding: EdgeInsets.only(right: 300),
            child: Text(
              'Your Car',
              style: TextStyle(
                color: Color(0xFFBDBDBD),
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.only(right: 140),
            child: SizedBox(
              width: 208.08,
              height: 50,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image: AssetImage("lib/asset/images/Toyota stock.png"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                  const SizedBox(width: 18),
                  const SizedBox(
                    width: 140.08,
                    height: 38.23,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Toyota Hilda Smart',
                            style: TextStyle(
                              color: Color(0xFF4C567B),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: ' \n',
                            style: TextStyle(
                              color: Color(0xFF4C567B),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'Reg No- 214356',
                            style: TextStyle(
                              color: Color(0xFFBDBDBD),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 22),
          // DETAILS
          const Padding(
            padding: EdgeInsets.only(right: 310),
            child: Text(
              'Details',
              style: TextStyle(
                color: Color(0xFFBDBDBD),
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 19),
            child: SizedBox(
              width: 329,
              child: Text(
                'Just wanted a the usual monthly check up!',
                style: TextStyle(
                  color: Color(0xFF4C567B),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const SizedBox(height: 22),
          // LOCATION
          const Padding(
            padding: EdgeInsets.only(right: 300),
            child: Text(
              'Location',
              style: TextStyle(
                color: Color(0xFFBDBDBD),
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 129),
            child: SizedBox(
              width: 234,
              height: 18,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 16,
                    height: 14,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("lib/asset/images/location.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 6),
                  const Text(
                    '10, Hughes Avenue Alagomeji, yaba    ',
                    style: TextStyle(
                      color: Color(0xFF4C567B),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 22),
          // TIME AND DATE
          const Padding(
            padding: EdgeInsets.only(right: 280),
            child: Text(
              'Time & Date',
              style: TextStyle(
                color: Color(0xFFBDBDBD),
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 170),
            child: Stack(
              children: [
                Container(
                  width: 176.94,
                  height: 31.92,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF7F7F9),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 0.50, color: Color(0xFFF4F4F7)),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
                Positioned(
                  top: 11,
                  left: 7.7,
                  child: Image.asset(
                    'lib/asset/images/calendar.png',
                    fit: BoxFit.fill,
                  ),
                ),
                const Positioned(
                  top: 8.4,
                  left: 26,
                  child: SizedBox(
                    width: 71.08,
                    child: Text(
                      '2nd oct 2022',
                      style: TextStyle(
                        color: Color(0xFF4C567B),
                        fontSize: 11,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 8.4,
                  left: 106,
                  child: Transform(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(1.57),
                    child: Container(
                      width: 18,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFBDBDBD),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 9,
                  left: 110,
                  child: Image.asset(
                    'lib/asset/images/clock.png',
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(width: 7),
                const Positioned(
                  top: 9,
                  left: 130,
                  child: SizedBox(
                    width: 47.19,
                    child: Text(
                      '3:00PM',
                      style: TextStyle(
                        color: Color(0xFF4C567B),
                        fontSize: 11,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 22),
          // PAYMENT
          const Padding(
            padding: EdgeInsets.only(right: 295),
            child: Text(
              'Payment',
              style: TextStyle(
                color: Color(0xFFBDBDBD),
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 64,
                  child: Text(
                    'Total Cost',
                    style: TextStyle(
                      color: Color(0xFF4C567B),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(width: 230),
                Text(
                  '\$2000',
                  style: TextStyle(
                    color: Color(0xFF1E2C5C),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
