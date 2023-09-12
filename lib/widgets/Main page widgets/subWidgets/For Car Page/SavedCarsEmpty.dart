// ignore_for_file: file_names

import './AddCarForm.dart';
import 'package:flutter/material.dart';

class SavedCarsEmpty extends StatefulWidget {
  const SavedCarsEmpty({super.key});

  @override
  State<SavedCarsEmpty> createState() => _SavedCarsEmptyState();
}

class _SavedCarsEmptyState extends State<SavedCarsEmpty> {
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
                          '0',
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
          // CAR IMAGE
          Container(
            width: 143.50,
            height: 118.84,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/asset/images/No cars.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(left: 26),
            width: 179.46,
            child: const Text(
              'No Car Added Yet',
              style: TextStyle(
                color: Color(0xFF4C567B),
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            width: 324,
            child: Text(
              'For the payment with cash method when you recieve your car technician you are excepted to hand the cash over to him.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFBDBDBD),
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AddCarForm()));
            },
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xFFF8F8FA)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            label: const Text(
              'Add a new car',
              style: TextStyle(
                color: Color(0xFF4C567B),
                fontSize: 10,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
            icon: const Icon(
              Icons.add,
              color: Color(0xFF4C567B),
              size: 18,
            ),
          )
        ],
      ),
    );
  }
}
