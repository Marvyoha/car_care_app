import 'package:flutter/material.dart';

class RewardPage extends StatefulWidget {
  const RewardPage({Key? key}) : super(key: key);

  @override
  State<RewardPage> createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 36),
          const Text(
            'Rewards',
            style: TextStyle(
              color: Color(0xFF4C567B),
              fontSize: 25,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          const Divider(height: 24),
          const SizedBox(height: 40),
          // HEADER
          const SizedBox(
            width: 266.66,
            child: Text(
              '     Get 30% off. Refer friends and Earn!!!',
              style: TextStyle(
                color: Color(0xFF4C567B),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 10),
          // REWARD IMAGE
          Container(
            width: 140,
            height: 144.13,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/asset/images/Reward.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 16),
          //SHARE BUTTON
          SizedBox(
            height: 54,
            width: 300,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1E2C5C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.share_rounded,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Click here to share',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          //  EXPLANATIONS?
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'How it works',
                style: TextStyle(
                  color: Color(0xFFBDBDBD),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                width: 308.04,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            '1. Click on share code\n2. Share to friends on social media platforms\n3. You will get 50% off you next booking on the app while your friend gets 20% off their first booking.\n4. Start by sharing terms and conditions apply.\n',
                        style: TextStyle(
                          color: Color(0xFF4C567B),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 2,
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                        style: TextStyle(
                          color: Color(0xFF4C567B),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
