// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              const SizedBox(height: 36),
              const Text(
                'Menu',
                style: TextStyle(
                  color: Color(0xFF4C567B),
                  fontSize: 25,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Divider(height: 24),
              const SizedBox(height: 25),
              // PERSONAL
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 30,
                  width: 360,
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                        width: 16,
                        height: 16,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("lib/asset/images/personal.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        'Personal',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF1E2C5C),
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(width: 204),
                      const Icon(
                        Icons.arrow_right_rounded,
                        color: Color(0xFF1E2C5C),
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              // SECURITY
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 30,
                  width: 360,
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                        width: 16,
                        height: 16,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("lib/asset/images/security.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        'Security',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF1E2C5C),
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(width: 210),
                      const Icon(
                        Icons.arrow_right_rounded,
                        color: Color(0xFF1E2C5C),
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              // Refer and earn
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 30,
                  width: 360,
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                        width: 16,
                        height: 16,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "lib/asset/images/refer and earn.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        'Refer and earn',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF1E2C5C),
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(width: 160),
                      const Icon(
                        Icons.arrow_right_rounded,
                        color: Color(0xFF1E2C5C),
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              // HELP CENTER
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 30,
                  width: 360,
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                        width: 16,
                        height: 16,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "lib/asset/images/information-button.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        'Help Center',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF1E2C5C),
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(width: 181),
                      const Icon(
                        Icons.arrow_right_rounded,
                        color: Color(0xFF1E2C5C),
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              // RATE OUR APP
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 30,
                  width: 360,
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                        width: 16,
                        height: 16,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("lib/asset/images/rate.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        'Rate Our App',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF1E2C5C),
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(width: 169),
                      const Icon(
                        Icons.arrow_right_rounded,
                        color: Color(0xFF1E2C5C),
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              // ABOUT APP
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 30,
                  width: 360,
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                        width: 16,
                        height: 16,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("lib/asset/images/about.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        'About App',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF1E2C5C),
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(width: 189),
                      const Icon(
                        Icons.arrow_right_rounded,
                        color: Color(0xFF1E2C5C),
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
