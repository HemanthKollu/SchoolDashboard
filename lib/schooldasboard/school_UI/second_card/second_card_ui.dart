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
    return Column(
      children: const [
        ClassesCard(),
        // _classesCard(screenWidth),
        Row(
          children: [
            Column(
              children: [
                SupportTicketsCard(),
                DcDetails(),
                // _supportTicketsCard(screenWidth),
                // _dcDetailsCard(screenWidth),
              ],
            ),
            Column(
              children: [
                SupportVisitInfoCard(),
                MultiMediaCard(),
                FinanceCard()
                // _supportsVisitInfoCard(screenWidth),
                // _multiMediaInstallationCard(screenWidth),
                // _financeCard(screenWidth),
              ],
            )
          ],
        )
      ],
    );
  }
}
