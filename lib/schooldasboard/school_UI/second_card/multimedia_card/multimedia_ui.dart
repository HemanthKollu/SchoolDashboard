import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MultiMediaCard extends StatefulWidget {
  const MultiMediaCard({super.key});

  @override
  State<MultiMediaCard> createState() => _MultiMediaCardState();
}

class _MultiMediaCardState extends State<MultiMediaCard> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.35,
      height: 275,
      margin: const EdgeInsets.only(left: 13, bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Multi Media Installation',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'View All',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
                width: 150,
                child: PieChart(
                  PieChartData(
                    sections: [
                      PieChartSectionData(
                        color: Colors.green,
                        value: 20,
                        title: null,
                        titleStyle: const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      PieChartSectionData(
                        color: Colors.orange,
                        value: 25,
                        title: null,
                        titleStyle: const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      PieChartSectionData(
                        color: Colors.purple,
                        value: 55,
                        title: null,
                        titleStyle: const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                    centerSpaceRadius: 50,
                    sectionsSpace: 1,
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        color: Colors.purple,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Completed',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Processing',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Pending',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
