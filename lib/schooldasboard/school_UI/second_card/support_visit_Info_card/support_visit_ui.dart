import 'package:flutter/material.dart';
import 'package:school_dashboard_app/schooldasboard/school_UI/second_card/support_visit_Info_card/support_visir_service.dart';

class SupportVisitInfoCard extends StatefulWidget {
  const SupportVisitInfoCard({super.key});

  @override
  State<SupportVisitInfoCard> createState() => _SupportVisitInfoCardState();
}

class _SupportVisitInfoCardState extends State<SupportVisitInfoCard> {
  SupportVisirService service = SupportVisirService();
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.35,
      height: 150,
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
                'Support Visit Info',
                style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                'View All',
                style: TextStyle(color: Colors.blue, fontSize: 14, decoration: TextDecoration.underline, decorationColor: Colors.blue),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 500,
                child: Slider(
                    value: service.sliderValue,
                    divisions: 2,
                    label: '14/feb',
                    onChanged: (value) {
                      setState(() {
                        service.sliderValue = value;
                      });
                    }),
              )
            ],
          ),
        ],
      ),
    );
  }
}
