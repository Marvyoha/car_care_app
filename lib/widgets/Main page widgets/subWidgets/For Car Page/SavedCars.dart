// ignore_for_file: file_names

import 'package:flutter/material.dart';
import './AddCarForm.dart';

class SavedCars extends StatefulWidget {
  const SavedCars({Key? key}) : super(key: key);

  @override
  State<SavedCars> createState() => _SavedCarsState();
}

class _SavedCarsState extends State<SavedCars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 36,
          ),
          const Text(
            '  Saved Cars',
            style: TextStyle(
              color: Color(0xFF4C567B),
              fontSize: 25,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          const Divider(
            height: 24,
          ),
          // IDICATOR OF THE NUMBER OF CARS
          Container(
            width: 85,
            height: 18,
            margin: const EdgeInsets.only(right: 270),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Saved Cars',
                  style: TextStyle(
                    color: Color(0xFF4C567B),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 3),
                SizedBox(
                  width: 13,
                  height: 13,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 13,
                          height: 13,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFE48430),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 4,
                        top: 2,
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 64,
          ),
          SizedBox(
            width: 260.48,
            height: 62.23,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
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
                const SizedBox(width: 30),

                // SAMPLE DISPLAY
                SizedBox(
                  width: 180.48,
                  height: 62.23,
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 1.36,
                        top: 0,
                        child: SizedBox(
                          width: 179.11,
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
                                  text: 'Reg No- 214356    Colour - Black',
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
                      ),
                      Positioned(
                        left: 0,
                        top: 40.23,
                        child: SizedBox(
                          width: 64,
                          height: 22,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 64,
                                  height: 22,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF7F7F9),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 0.50,
                                          color: Color(0xFFF4F4F7)),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 9.50,
                                top: 3.50,
                                child: Text(
                                  'Bookings',
                                  style: TextStyle(
                                    color: Color(0xFF4C567B),
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 72.44,
                        top: 40.23,
                        child: SizedBox(
                          width: 64,
                          height: 22,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 64,
                                  height: 22,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 0.50,
                                          color: Color(0xFFF4F4F7)),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 12,
                                top: 3.50,
                                child: Text(
                                  'Car Info',
                                  style: TextStyle(
                                    color: Color(0xFF4C567B),
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          // ADD A CAR BUTTON
          TextButton.icon(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AddCarForm()));
            },
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xFF1F2C5D)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            label: const Text(
              'Add a new car',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 10,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
            icon: const Icon(
              Icons.add,
              color: Color(0xFFFFFFFF),
              size: 18,
            ),
          )
        ],
      ),
    );
  }
}
