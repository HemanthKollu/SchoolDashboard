import 'package:flutter/material.dart';
import 'package:school_dashboard_app/schooldasboard/school_UI/second_card/support_tickets_card/support_ticket_service.dart';

class SupportTicketsCard extends StatefulWidget {
  const SupportTicketsCard({super.key});

  @override
  State<SupportTicketsCard> createState() => _SupportTicketsCardState();
}

class _SupportTicketsCardState extends State<SupportTicketsCard> {
  SupportTicketService service = SupportTicketService();

  @override
  void initState() {
    super.initState();
    service.getTickets();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Card(
      elevation: 2,
      color: Theme.of(context).colorScheme.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      // width: screenWidth * 0.35,
      // height: 350,
      // margin: const EdgeInsets.only(left: 16, right: 10, bottom: 15),
      // decoration: BoxDecoration(
      //   color: Theme.of(context).colorScheme.background,
      //   borderRadius: BorderRadius.circular(16),
      // ),
      child: SizedBox(
        width: screenWidth * 0.31,
        height: 335,
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
                      'Support Tickets',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            ...List.generate(service.tickets.length, (index) {
              final ticketList = service.tickets[index];
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 8,
                              decoration: BoxDecoration(
                                color: ticketList.lineColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ticketList.titleName,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  ticketList.timeAndDate,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          ticketList.icon,
                          color: ticketList.color,
                          size: 30,
                        ),
                      ],
                    ),
                    if (index != service.tickets.length - 1)
                      const Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
