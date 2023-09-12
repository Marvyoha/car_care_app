import 'package:flutter/material.dart';

import 'resetpassword.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double screenHeight = constraints.maxHeight;
          final double screenWidth = constraints.maxWidth;

          return SingleChildScrollView(
            child: SizedBox(
              height: screenHeight,
              width: screenWidth,
              child: Container(
                height: 70.94,
                width: screenWidth,
                margin: EdgeInsets.only(top: screenHeight * 0.1),
                padding: const EdgeInsets.only(left: 21.4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: Color(0xFF1E2C5C),
                        fontSize: 22,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const SizedBox(
                      width: 326.62,
                      child: Text(
                        'Add your email a password reset code will be sent to you.',
                        style: TextStyle(
                          color: Color(0xFF4C567B),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 19),
                    const Text(
                      'Email Address:',
                      style: TextStyle(
                        color: Color(0xFF1E2C5C),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 14),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          icon: const Icon(Icons.mail_rounded),
                        ),
                      ),
                    ),
                    const SizedBox(height: 38),
                    Padding(
                      padding: const EdgeInsets.only(left: 35, right: 45),
                      child: SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: TextButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
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
                                            'Kindly check your email for a password reset link',
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
                                                MaterialStateProperty.all<
                                                        Color>(
                                                    const Color(0xFF1E2C5C)),
                                            foregroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const ResetPassword(),
                                              ),
                                            );
                                          },
                                          child: const Text(
                                            'Reset Password',
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
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
