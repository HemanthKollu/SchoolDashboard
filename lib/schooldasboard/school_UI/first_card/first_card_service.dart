import 'package:flutter/material.dart';

import '../../model.dart';

class FirstCardService {
  int selectedIndex = 0;

  final schoolData = SchoolInfo(
      schoolName: 'Rainbow English Medium School',
      schoolCode: 'AGV022',
      isActive: true,
      principalName: 'John Smith',
      principalEmail: 'principal@gmail.com',
      principalPhone: '+91 9999999999',
      schoolEmail: 'school123@gmail.com',
      website: 'https://www.google.com/nextGen',
      schoolPhone1: '0866-1234567',
      schoolPhone2: '+91 8888888888',
      address1: 'Andhra Pradesh, Vijayawada, Ashok nagar, Penamaluru, Venkatapaiah street. 520007',
      address2: 'Andhra Pradesh, Vijayawada, Ashok nagar, Penamaluru, Venkatapaiah street. 520007',
      academicYears: ['2025-2026', '2024-2025', '2023-2024'],
      selectedYear: '0',
      startDate: '01 Apr 2025',
      endDate: '31 Mar 2026',
      correspondenceName: "Correspondent Name",
      correspondenceEmail: "correspondent@gmail.com",
      correspondencePhone: "+91 9999999999",
      personIcon: Icons.person_4_outlined);
}
