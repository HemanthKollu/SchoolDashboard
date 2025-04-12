import 'package:flutter/material.dart';

import '../../../model.dart';

class SupportTicketService {
  List<SupportsTicketsModel> tickets = List<SupportsTicketsModel>.empty(growable: true);

  void getTickets() {
    tickets.addAll([
      SupportsTicketsModel(titleName: 'Title name here in 30 characters', timeAndDate: "04/Jan - 4:35PM", icon: Icons.flag, color: Colors.orange.shade500, lineColor: Colors.green),
      SupportsTicketsModel(titleName: 'Title name here in 30 characters', timeAndDate: "04/Jan - 4:35PM", icon: Icons.flag, color: Colors.deepPurple, lineColor: Colors.grey),
      SupportsTicketsModel(titleName: 'Title name here in 30 characters', timeAndDate: "04/Jan - 4:35PM", icon: Icons.flag, color: Colors.green, lineColor: Colors.blue),
      SupportsTicketsModel(titleName: 'Title name here in 30 characters', timeAndDate: "04/Jan - 4:35PM", icon: Icons.flag, color: Colors.red, lineColor: Colors.yellow),
    ]);
  }
}
