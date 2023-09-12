import 'package:car_care_app/widgets/Main%20page%20widgets/subWidgets/For%20Home%20Page/billings/tabBar%20complete.dart';
import 'package:car_care_app/widgets/Main%20page%20widgets/subWidgets/For%20Home%20Page/billings/tabBar%20in%20progress.dart';
import 'package:flutter/material.dart';

class BillingHome extends StatefulWidget {
  const BillingHome({Key? key}) : super(key: key);

  @override
  State<BillingHome> createState() => _BillingHomeState();
}

class _BillingHomeState extends State<BillingHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF4F4F7),
        iconTheme: const IconThemeData(
          color: Color(0xFF4C567B),
        ),
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Billings',
            style: TextStyle(
              color: Color(0xFF4C567B),
              fontSize: 25,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('lib/asset/images/in progress.png'),
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'In Progress',
                      style: TextStyle(
                        color: Color(0xFFF09D38),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('lib/asset/images/completed.png'),
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Completed',
                      style: TextStyle(
                        color: Color(0xFF50BA47),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                TabBarInProgress(),
                TabBarComplete(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
