import 'package:flutter/material.dart';
import 'package:school_dashboard_app/schooldasboard/school_UI/second_card/dc_details_card/dc_details_ui.dart';
import 'package:school_dashboard_app/schooldasboard/school_UI/second_card/finance_card/finance_ui.dart';
import 'package:school_dashboard_app/schooldasboard/school_UI/second_card/multimedia_card/multimedia_ui.dart';
import 'package:school_dashboard_app/schooldasboard/school_UI/second_card/support_tickets_card/support_tickets_card_ui.dart';
import 'package:school_dashboard_app/schooldasboard/school_UI/second_card/support_visit_Info_card/support_visit_ui.dart';

import 'classes_card/classes_card_ui.dart';

class SecondCard extends StatefulWidget {
  const SecondCard({super.key});

  @override
  State<SecondCard> createState() => _SecondCardState();
}

class _SecondCardState extends State<SecondCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          children: const [
            ClassesCard(),
            Row(
              children: [
                Column(
                  children: [
                    FinanceCard(),
                    DcDetails(),
                  ],
                ),
                Column(
                  children: [
                    SupportVisitInfoCard(),
                    MultiMediaCard(),
                    SupportTicketsCard(),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
