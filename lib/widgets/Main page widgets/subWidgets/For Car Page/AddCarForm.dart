// ignore_for_file: file_names

import 'package:car_care_app/widgets/Main%20page%20widgets/subWidgets/For%20Car%20Page/SavedCars.dart';
import 'package:flutter/material.dart';

class AddCarForm extends StatefulWidget {
  const AddCarForm({Key? key}) : super(key: key);

  @override
  State<AddCarForm> createState() => _AddCarFormState();
}

class _AddCarFormState extends State<AddCarForm> {
  String selectedLocation = 'Location';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF4F4F7),
        iconTheme: const IconThemeData(
          color: Color(0xFF4C567B),
        ),
        title: const Text(
          '    Add details of your Car',
          style: TextStyle(
            color: Color(0xFF1E2C5C),
            fontSize: 22,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 17,
            ),
            // CAR MODEL
            const Padding(
              padding: EdgeInsets.only(right: 285),
              child: Text(
                'Car Model:',
                style: TextStyle(
                  color: Color(0xFF1E2C5C),
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // CAR COLOUR
            const Padding(
              padding: EdgeInsets.only(right: 285),
              child: Text(
                'Car Color:',
                style: TextStyle(
                  color: Color(0xFF1E2C5C),
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // PLATE NUMBER
            const Padding(
              padding: EdgeInsets.only(right: 250),
              child: Text(
                'Plate Number:',
                style: TextStyle(
                  color: Color(0xFF1E2C5C),
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // VIN NUMBER
            const Padding(
              padding: EdgeInsets.only(right: 270),
              child: Text(
                'Vin Number:',
                style: TextStyle(
                  color: Color(0xFF1E2C5C),
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // LOCATION
            ExpansionTile(
              title: Text(
                selectedLocation,
                style: const TextStyle(
                  color: Color(0xFF1E2C5C),
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
              collapsedTextColor: const Color(0xFF1E2C5C),
              textColor: const Color(0xFF1E2C5C),
              iconColor: const Color(0xFF1E2C5C),
              collapsedBackgroundColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              children: [
                ListTile(
                  onTap: () {
                    setState(() {
                      selectedLocation = 'Location 1';
                    });
                  },
                  title: const Text('Location 1'),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      selectedLocation = 'Location 2';
                    });
                  },
                  title: const Text('Location 2'),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      selectedLocation = 'Location 3';
                    });
                  },
                  title: const Text('Location 3'),
                ),
                // Add more ListTile widgets as needed
              ],
            ),
            const Divider(
              height: 10,
            ),
            // UPLOAD PICTURES
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 220,
                      // INFO IN BOTTOM SHEET
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Add a picture',
                            style: TextStyle(
                              color: Color(0xFF1E2C5C),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                                width: 270,
                                height: 50,
                                decoration: ShapeDecoration(
                                  color: const Color(0xffF8F8FA),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.50, color: Color(0xFFBDBDBD)),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Choose from gallery',
                                    style: TextStyle(
                                      color: Color(0xFF1E2C5C),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )),
                          ),
                          const SizedBox(
                            height: 17,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                                width: 270,
                                height: 50,
                                decoration: ShapeDecoration(
                                  color: const Color(0xffF8F8FA),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 0.50, color: Color(0xFFBDBDBD)),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Take a picture',
                                    style: TextStyle(
                                      color: Color(0xFF1E2C5C),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const SizedBox(
                            width: 244,
                            child: Stack(children: [
                              Icon(Icons.info_outline_rounded),
                              Positioned(
                                right: 16,
                                child: Text(
                                  'Ensure the picture is clear and well photographed\nfor easy view by the technician',
                                  style: TextStyle(
                                    color: Color(0xFFBDBDBD),
                                    fontSize: 9,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              )
                            ]),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              child: Container(
                height: 77,
                width: 334,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFF1F2C5D),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.photo_rounded,
                        color: Color(0xFF1F2C5D),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Upload Car Pictures',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF1F2C5D),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 31),
            SizedBox(
              width: 330,
              height: 60,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SavedCars()));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFF1E2C5C)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                ),
                child: const Text(
                  ' Confirm Details',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
