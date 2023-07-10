import 'dart:developer';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/widgets/custom_banner.dart';

import 'core/models/sales.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final series = [
    charts.Series<SalesData, String>(
      id: 'Sales',
      data: [
        SalesData('Jan', 100),
        SalesData('Feb', 200),
        SalesData('Mar', 150),
        SalesData('Apr', 300),
      ],
      domainFn: (SalesData sales, _) => sales.month,
      measureFn: (SalesData sales, _) => sales.amount,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DashBoard',
          style: GoogleFonts.montserrat(),
        ),
        actions: [
          GestureDetector(
            onTap: () => log('OnPressed Notification'),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    const Icon(
                      Icons.notifications_outlined,
                      color: Colors.black,
                      size: 40,
                    ),
                    Positioned(
                      top: 5,
                      right: -10,
                      left: 6,
                      child: Container(
                        width: 18,
                        height: 18,
                        decoration: const BoxDecoration(
                          color: Colors.purple,
                          shape: BoxShape.circle,
                        ),
                        child: const Text(
                          '10',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(children: [
          Container(
            padding: const EdgeInsets.only(left: 16),
            width: MediaQuery.of(context).size.width,
            child: Text(
              'Project Summary',
              textAlign: TextAlign.start,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600, fontSize: 20),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: GridView.count(
              childAspectRatio: 1.1,
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              padding: const EdgeInsets.all(8),
              children: const [
                CustomBanner(
                    textBottom: 'In Progress',
                    textTop: '24',
                    backGroundColor: 0xffAF7DFF),
                CustomBanner(
                    textBottom: 'In Review',
                    textTop: '56',
                    backGroundColor: 0xffFB87FF),
                CustomBanner(
                    textBottom: 'On Hold',
                    textTop: '16',
                    backGroundColor: 0xffF7C344),
                CustomBanner(
                    textBottom: 'Completed',
                    textTop: '45',
                    backGroundColor: 0xff00E862)
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
