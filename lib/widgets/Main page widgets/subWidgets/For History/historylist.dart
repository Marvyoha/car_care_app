import 'package:car_care_app/widgets/Main%20page%20widgets/subWidgets/For%20History/BookingFullComplete.dart';
import 'package:car_care_app/widgets/Main%20page%20widgets/subWidgets/For%20History/BookingFullPending.dart';
import 'package:car_care_app/widgets/Main%20page%20widgets/subWidgets/tags/completed.dart';
import 'package:car_care_app/widgets/Main%20page%20widgets/subWidgets/tags/in%20progress.dart';
import 'package:flutter/material.dart';

class HistoryList extends StatefulWidget {
  const HistoryList({Key? key}) : super(key: key);

  @override
  State<HistoryList> createState() => _HistoryListState();
}

class _HistoryListState extends State<HistoryList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF4F4F7),
        iconTheme: const IconThemeData(
          color: Color(0xFF4C567B),
        ),
        title: const Text(
          '               History',
          style: TextStyle(
            color: Color(0xFF4C567B),
            fontSize: 25,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(19.0),
          child: Column(
            children: [
              const SizedBox(height: 18),
              // IN PROGRESS SAMPLE
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BookingInProgress(),
                    ),
                  );
                },
                child: SizedBox(
                  width: 344.79,
                  height: 55.24,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage(
                                    "lib/asset/images/Toyota stock.png"),
                                fit: BoxFit.fill,
                              ),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 45),
                            child: Text(
                              'Check Up Service',
                              style: TextStyle(
                                color: Color(0xFF1E2C5C),
                                fontSize: 13,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 45, top: 19),
                            child: Row(
                              children: [
                                const Text(
                                  'Toyota Celica ',
                                  style: TextStyle(
                                    color: Color(0xFFBDBDBD),
                                    fontSize: 13,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(width: 42),
                                Container(
                                  height: 9,
                                  width: 10,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "lib/asset/images/calendar.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 2),
                                const Text(
                                  'Apr 14 2022',
                                  style: TextStyle(
                                    color: Color(0xFFBDBDBD),
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(width: 30),
                                const InProgress(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              // COMPLETED SAMPLE
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BookingComplete(),
                    ),
                  );
                },
                child: SizedBox(
                  width: 344.79,
                  height: 55.24,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage(
                                    "lib/asset/images/toyota stock 2.png"),
                                fit: BoxFit.fill,
                              ),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 45),
                            child: Text(
                              'Repair Service',
                              style: TextStyle(
                                color: Color(0xFF1E2C5C),
                                fontSize: 13,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 45, top: 19),
                            child: Row(
                              children: [
                                const Text(
                                  'Toyota Hilda ',
                                  style: TextStyle(
                                    color: Color(0xFFBDBDBD),
                                    fontSize: 13,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(width: 42),
                                Container(
                                  height: 9,
                                  width: 10,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "lib/asset/images/calendar.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 2),
                                const Text(
                                  'jun 2 2022',
                                  style: TextStyle(
                                    color: Color(0xFFBDBDBD),
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(width: 30),
                                const Completed(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
