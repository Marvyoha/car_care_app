import 'package:flutter/material.dart';

import 'login.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 75),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Reset Password',
                  style: TextStyle(
                    color: Color(0xFF1E2C5C),
                    fontSize: 22,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'Create a new password',
                  style: TextStyle(
                    color: Color(0xFF4C567B),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 19),
                const Text(
                  'Add a new Password:',
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
                    obscureText: true, // Set obscureText property to true
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      icon: const Icon(Icons.lock_rounded),
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                const Text(
                  'Confirm new Password:',
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
                    obscureText: true, // Set obscureText property to true
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      icon: const Icon(Icons.lock_rounded),
                    ),
                  ),
                ),
                const SizedBox(height: 38),
                SizedBox(
                  width: double.infinity, // Fills available width
                  child: Padding(
                    padding: const EdgeInsets.only(left: 35, right: 35),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70),
                        ),
                        backgroundColor: const Color(0xFF1E2C5C),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.all(16.0),
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
                                        'lib/asset/images/message1.png',
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 238.79,
                                      child: Text(
                                        'Kindly Log in with your new Password',
                                        style: TextStyle(
                                          color: Color(0xFF4C567B),
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              actions: [
                                Center(
                                  child: SizedBox(
                                    width: 161.54,
                                    height: 40.86,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(70),
                                        ),
                                        backgroundColor:
                                            const Color(0xFF1E2C5C),
                                        foregroundColor: Colors.white,
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
                                        'Login',
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
                        'Change Password',
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
      ),
    );
  }
}
