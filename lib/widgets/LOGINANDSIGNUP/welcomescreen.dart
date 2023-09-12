// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'createaccount.dart';
import 'login.dart';

class Wlcm_scrn extends StatefulWidget {
  const Wlcm_scrn({Key? key}) : super(key: key);

  @override
  State<Wlcm_scrn> createState() => _Wlcm_scrnState();
}

class _Wlcm_scrnState extends State<Wlcm_scrn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return SingleChildScrollView(
                  child: Center(
                    child: Container(
                      constraints: BoxConstraints(
                        minHeight: constraints.maxHeight,
                        minWidth: constraints.maxWidth,
                      ),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: (orientation == Orientation.landscape)
                                ? constraints.maxHeight
                                : 340,
                            width: constraints.maxWidth,
                            child: const Image(
                              image: AssetImage('lib/asset/images/wlcmsrn.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Unlimited access to on demand\ncar service & repair.',
                            style: TextStyle(
                              color: Color(0xFF1E2C5C),
                              fontSize: 25,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          SizedBox(
                            height: 60,
                            width: 290,
                            child: TextButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(70),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  const Color(0xFF1E2C5C),
                                ),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Colors.white,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const CreateAccount(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Create your account',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 19.44,
                          ),
                          SizedBox(
                            height: 60,
                            width: 290,
                            child: TextButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(70),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  const Color(0xFFF4F4F7),
                                ),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                  const Color(0xFF1E2C5C),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LogIn(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Log in',
                                style: TextStyle(
                                  color: Color(0xFF1E2C5C),
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Got questions?',
                                style: TextStyle(
                                  color: Color(0xFF8C8C8C),
                                  fontSize: 13,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'ask here',
                                  style: TextStyle(
                                    color: Color(0xFF1E2C5C),
                                    fontSize: 13,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
