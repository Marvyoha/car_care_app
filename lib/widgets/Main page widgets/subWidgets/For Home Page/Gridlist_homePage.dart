// ignore_for_file: file_names

import 'package:car_care_app/widgets/Main%20page%20widgets/subWidgets/For%20History/historylist.dart';
import 'package:flutter/material.dart';

import 'RequestService.dart';
import 'billings/billing_home.dart';

class GridListHomePage extends StatefulWidget {
  const GridListHomePage({Key? key}) : super(key: key);

  @override
  State<GridListHomePage> createState() => _GridListHomePageState();
}

class _GridListHomePageState extends State<GridListHomePage> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) {
        final crossAxisCount = orientation == Orientation.portrait ? 2 : 3;

        return GridView.count(
          crossAxisCount: crossAxisCount,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(20),
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PickService(),
                  ),
                );
              },
              child: _buildGridItem(
                image: 'lib/asset/images/car-service.png',
                title: 'Request Service',
                subtitle: 'Ranging from repairs to correction book now!',
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HistoryList(),
                  ),
                );
              },
              child: _buildGridItem(
                image: 'lib/asset/images/schedule.png',
                title: 'History',
                subtitle: 'Ranging from repairs to correction book now!',
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: _buildGridItem(
                image: 'lib/asset/images/vehicle.png',
                title: 'Vehicle Status',
                subtitle: 'Ranging from repairs to correction book now!',
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: _buildGridItem(
                image: 'lib/asset/images/store.png',
                title: 'Nearby',
                subtitle: 'Ranging from repairs to correction book now!',
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BillingHome(),
                  ),
                );
              },
              child: _buildGridItem(
                image: 'lib/asset/images/billing.png',
                title: 'Billing',
                subtitle: 'Ranging from repairs to correction book now!',
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: _buildGridItem(
                image: 'lib/asset/images/care.png',
                title: 'Support',
                subtitle: 'Ranging from repairs to correction book now!',
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildGridItem({
    required String image,
    required String title,
    required String subtitle,
  }) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          decoration: BoxDecoration(
            color: const Color(0xFFF7F7F9),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 0.50, color: const Color(0xFFF4F4F7)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image, width: 36, height: 36),
              SizedBox(
                width: 101,
                height: 17.96,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF1E2C5C),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                width: 131.80,
                height: 25.60,
                child: Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF4C567B),
                    fontSize: 7,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
