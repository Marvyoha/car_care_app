import 'package:flutter/material.dart';

import 'subWidgets/For Home Page/Gridlist_homePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.only(
            left: 20.87,
            top: 36,
          ),
          child: SizedBox(
            width: 375,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // Displaying the user's name, customer care and notification
              Row(
                children: [
                  const Text(
                    'Hello USER ,',
                    style: TextStyle(
                      color: Color(0xFF1E2C5C),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Flexible(
                    fit: FlexFit.tight,
                    child: SizedBox(),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle onTap action here
                    },
                    child: Container(
                      width: 22,
                      height: 22,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'lib/asset/images/information-button.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle onTap action here
                    },
                    child: Container(
                      width: 22,
                      height: 22,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('lib/asset/images/bell.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 21,
              ),
              // Discount bar
              Container(
                width: 375,
                height: 80,
                decoration: ShapeDecoration(
                  color: const Color(0xFF1E2C5C),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 82,
                      width: 86,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage('lib/asset/images/discount home.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 119,
                      top: 17,
                      child: Text(
                        'Enjoy 50% Discount',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 119,
                      top: 45,
                      child: Text(
                        'Refer and earn now!!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFF4F4F6),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              const GridListHomePage(),
            ]),
          )),
    ));
  }
}
