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

    return Container(
      width: screenWidth * 0.35,
      height: 375,
      margin: const EdgeInsets.only(left: 16, right: 10, bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Support Tickets',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'View All',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          ...List.generate(service.tickets.length, (index) {
            final ticketList = service.tickets[index];
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 60,
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
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              ticketList.timeAndDate,
                              style: const TextStyle(
                                fontSize: 15,
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
                      size: 35,
                    ),
                  ],
                ),
                if (index != service.tickets.length - 1)
                  const Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
