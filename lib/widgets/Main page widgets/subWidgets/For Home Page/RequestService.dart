// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PickService extends StatefulWidget {
  const PickService({Key? key}) : super(key: key);

  @override
  State<PickService> createState() => _PickServiceState();
}

class _PickServiceState extends State<PickService> {
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
        title: const Text(
          '        Request Service',
          style: TextStyle(
            color: Color(0xFF4C567B),
            fontSize: 25,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            height: screenHeight,
            width: screenWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // HEADER
                const SizedBox(height: 23),
                const Center(
                  child: Text(
                    'What service do you need?',
                    style: TextStyle(
                      color: Color(0xFF1E2C5C),
                      fontSize: 19,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                const Center(
                  child: Text(
                    'Pick your preferred service to confirm the request you would like us to help you with.',
                    style: TextStyle(
                      color: Color(0xFFBDBDBD),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                // CHECKUP BUTTON
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 19.0, right: 19),
                    child: Container(
                      width: 372,
                      height: 100,
                      decoration: ShapeDecoration(
                        color: const Color.fromARGB(255, 245, 244, 244),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 0.50, color: Color(0xFFF4F4F7)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 137,
                            top: 13,
                            child: SizedBox(
                              width: 110,
                              height: 40,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "lib/asset/images/checkup.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    'Checkup',
                                    style: TextStyle(
                                      color: Color(0xFF1E2C5C),
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Positioned(
                            left: 85,
                            top: 53,
                            child: SizedBox(
                              width: 215.97,
                              height: 25.60,
                              child: Text(
                                'Checkup on your car, pick a date and our technicain assist will come for the car shortly.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF4C567B),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // REPAIR
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 19.0, right: 19),
                    child: Container(
                      width: 372,
                      height: 100,
                      decoration: ShapeDecoration(
                        color: const Color.fromARGB(255, 245, 244, 244),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 0.50, color: Color(0xFFF4F4F7)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 137,
                            top: 13,
                            child: SizedBox(
                              width: 110,
                              height: 40,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "lib/asset/images/repair and maintenance.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    'Repair',
                                    style: TextStyle(
                                      color: Color(0xFF1E2C5C),
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Positioned(
                            left: 85,
                            top: 53,
                            child: SizedBox(
                              width: 215.97,
                              height: 25.60,
                              child: Text(
                                'Checkup on your car, pick a date and our technicain assist will come for the car shortly.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF4C567B),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // MAINTENANCE
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 19.0, right: 19),
                    child: Container(
                      width: 372,
                      height: 100,
                      decoration: ShapeDecoration(
                        color: const Color.fromARGB(255, 245, 244, 244),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 0.50, color: Color(0xFFF4F4F7)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 137,
                            top: 13,
                            child: SizedBox(
                              width: 129,
                              height: 40,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "lib/asset/images/repair and maintenance.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    'Maintenace',
                                    style: TextStyle(
                                      color: Color(0xFF1E2C5C),
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Positioned(
                            left: 85,
                            top: 53,
                            child: SizedBox(
                              width: 215.97,
                              height: 25.60,
                              child: Text(
                                'Checkup on your car, pick a date and our technicain assist will come for the car shortly.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF4C567B),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // SOS/RECOVERY
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 19.0, right: 19),
                    child: Container(
                      width: 372,
                      height: 100,
                      decoration: ShapeDecoration(
                        color: const Color.fromARGB(255, 245, 244, 244),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 0.50, color: Color(0xFFF4F4F7)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 137,
                            top: 13,
                            child: SizedBox(
                              width: 150,
                              height: 40,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "lib/asset/images/SOS recovery.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    'SOS/Recovery',
                                    style: TextStyle(
                                      color: Color(0xFF1E2C5C),
                                      fontSize: 18,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Positioned(
                            left: 85,
                            top: 53,
                            child: SizedBox(
                              width: 215.97,
                              height: 25.60,
                              child: Text(
                                'Checkup on your car, pick a date and our technicain assist will come for the car shortly.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF4C567B),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
