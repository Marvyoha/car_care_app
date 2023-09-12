// ignore_for_file: file_names

import 'package:flutter/material.dart';

class InProgress extends StatelessWidget {
  const InProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74,
      height: 18,
      decoration: ShapeDecoration(
        color: const Color(0xFFF7F7F9),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.50, color: Color(0xFFF4F4F7)),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: SizedBox(
        width: 59,
        height: 12,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/asset/images/in progress.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(width: 5),
            const Text(
              'In Progress',
              style: TextStyle(
                color: Color(0xFFF09D38),
                fontSize: 8,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
