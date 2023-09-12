import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login.dart';

class VrfyNum extends StatefulWidget {
  const VrfyNum({Key? key}) : super(key: key);

  @override
  State<VrfyNum> createState() => _VrfyNumState();
}

class _VrfyNumState extends State<VrfyNum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: Container(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
                minWidth: constraints.maxWidth,
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Verify your Phone Number',
                    style: TextStyle(
                      color: Color(0xFF1E2C5C),
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'We\'ve just sent you an sms, enter the code to your\nphone number ********4478. This code will expire in\n5 minutes.',
                    style: TextStyle(
                      color: Color(0xFF4C567B),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                      decoration: const InputDecoration(
                        labelText: 'Enter Verification Code:',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: TextButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(70),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFF1E2C5C),
                          ),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text(
                                  'Successful',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF1E2C5C),
                                    fontSize: 17,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                content: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 115,
                                        width: 115,
                                        child: Image.asset(
                                            'lib/asset/images/message1.png'),
                                      ),
                                      const SizedBox(
                                        width: 238.79,
                                        child: Text(
                                          'Phone number Verification complete',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF4C567B),
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                actions: [
                                  Center(
                                    child: SizedBox(
                                      width: 161.54,
                                      height: 40.86,
                                      child: TextButton(
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(70),
                                            ),
                                          ),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  const Color(0xFF1E2C5C)),
                                          foregroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.white),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const LogIn(),
                                            ),
                                          );
                                        },
                                        child: const Text(
                                          'Log in',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: const Text(
                          'Confirm',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 149, bottom: 30),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Resend Code',
                        style: TextStyle(
                          color: Color(0xFF4C567B),
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
