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

    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
      child: Card(
        elevation: 2,
        color: Theme.of(context).colorScheme.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: SizedBox(
          width: screenWidth * 0.31,
          height: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFDB6400),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Text(
                        'Support Visit Info',
                        style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text(
                      'View All',
                      style: TextStyle(color: Colors.blue, fontSize: 20, decoration: TextDecoration.underline, decorationColor: Colors.blue),
                    ),
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
        ),
      ),
    );
  }
}
