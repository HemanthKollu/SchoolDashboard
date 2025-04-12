import 'package:flutter/material.dart';
import 'first_card/first_card_ui.dart';
import 'second_card/second_card_ui.dart';

class SchoolDashboard extends StatefulWidget {
  const SchoolDashboard({super.key});

  @override
  State<SchoolDashboard> createState() => _SchoolDashboardState();
}

class _SchoolDashboardState extends State<SchoolDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade300,
      body: Row(
        children: const [FirstCard(), SecondCard()],
      ),
    );
  }
}


  //   return Container(
  //       width: screenWidth * 0.25,
  //       margin: const EdgeInsets.all(13),
  //       decoration: BoxDecoration(
  //         color: Colors.white,
  //         borderRadius: BorderRadius.circular(16),
  //       ),
  //       child: Padding(
  //         padding: const EdgeInsets.all(16),
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Align(
  //               alignment: Alignment.topCenter,
  //               child: Text(
  //                 service.schoolData.schoolName,
  //                 style: const TextStyle(
  //                   color: Colors.black,
  //                   fontWeight: FontWeight.w700,
  //                   fontSize: 35,
  //                 ),
  //                 textAlign: TextAlign.center,
  //               ),
  //             ),
  //             const SizedBox(height: 24),
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Text(service.schoolData.schoolCode,
  //                     style: const TextStyle(
  //                       fontSize: 18,
  //                       fontWeight: FontWeight.bold,
  //                     )),
  //                 Row(
  //                   children: [
  //                     const Icon(Icons.circle, color: Colors.greenAccent, size: 12),
  //                     const SizedBox(
  //                       width: 8,
  //                     ),
  //                     Text(service.schoolData.isActive ? "Active" : 'Inactive',
  //                         style: const TextStyle(
  //                           fontSize: 18,
  //                           fontWeight: FontWeight.bold,
  //                         )),
  //                   ],
  //                 )
  //               ],
  //             ),
  //             const SizedBox(height: 18),
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Row(
  //                   children: [
  //                     const Icon(
  //                       Icons.person_4_outlined,
  //                       color: Colors.black,
  //                       size: 25,
  //                     ),
  //                     const SizedBox(
  //                       width: 8,
  //                     ),
  //                     Text(
  //                       service.schoolData.principalName,
  //                       style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  //                     )
  //                   ],
  //                 ),
  //                 const Text(
  //                   "Principal",
  //                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  //                 ),
  //               ],
  //             ),
  //             const SizedBox(height: 18),
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Row(
  //                   children: [
  //                     const Icon(Icons.mail_outline, color: Colors.black, size: 25),
  //                     const SizedBox(width: 8),
  //                     Text(service.schoolData.principalEmail, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
  //                   ],
  //                 ),
  //                 Text(service.schoolData.principalPhone, style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
  //               ],
  //             ),
  //             const SizedBox(height: 18),
  //             Row(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 const Icon(Icons.location_on_outlined, color: Colors.black, size: 25),
  //                 const SizedBox(
  //                   width: 8,
  //                 ),
  //                 Expanded(
  //                   child: Text(
  //                     service.schoolData.address1,
  //                     style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //             const SizedBox(height: 18),
  //             Row(
  //               children: [
  //                 const Icon(Icons.mail_outline, color: Colors.black, size: 25),
  //                 const SizedBox(
  //                   width: 8,
  //                 ),
  //                 Text(
  //                   service.schoolData.schoolEmail,
  //                   style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //                 )
  //               ],
  //             ),
  //             const SizedBox(
  //               height: 20,
  //             ),
  //             Text(
  //               service.schoolData.website,
  //               style: const TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.w500),
  //             ),
  //             const SizedBox(
  //               height: 18,
  //             ),
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Text(
  //                   service.schoolData.schoolPhone1,
  //                   style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
  //                 ),
  //                 Text(
  //                   service.schoolData.schoolPhone2,
  //                   style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
  //                 ),
  //               ],
  //             ),
  //             const SizedBox(
  //               height: 18,
  //             ),
  //             Row(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 const Icon(Icons.receipt_long, color: Colors.black, size: 25),
  //                 const SizedBox(
  //                   width: 8,
  //                 ),
  //                 Expanded(
  //                     child: Text(
  //                   service.schoolData.address2,
  //                   style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //                 ))
  //               ],
  //             ),
  //             const SizedBox(
  //               height: 20,
  //             ),
  //             Padding(
  //               padding: const EdgeInsets.only(left: 10),
  //               child: SegmentedButton<String>(
  //                 segments: service.schoolData.academicYears.map((e) {
  //                   return ButtonSegment<String>(
  //                     value: e,
  //                     label: Text(e, style: const TextStyle(color: Colors.black, fontSize: 17)),
  //                   );
  //                 }).toList(),
  //                 selected: {service.schoolData.selectedYear},
  //                 style: SegmentedButton.styleFrom(
  //                   padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 25),
  //                   side: const BorderSide(color: Colors.black, width: 1.5),
  //                   shape: RoundedRectangleBorder(
  //                     borderRadius: BorderRadius.circular(6),
  //                   ),
  //                   backgroundColor: Colors.white,
  //                 ),
  //                 onSelectionChanged: (newSelection) {
  //                   // Handle selection change
  //                 },
  //               ),
  //             ),
  //             const SizedBox(
  //               height: 20,
  //             ),
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceAround,
  //               children: [
  //                 Text(service.schoolData.startDate, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
  //                 const Icon(Icons.arrow_forward_sharp, color: Colors.black, size: 25),
  //                 Text(service.schoolData.endDate, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
  //               ],
  //             )
  //           ],
  //         ),
  //       ));
  // }