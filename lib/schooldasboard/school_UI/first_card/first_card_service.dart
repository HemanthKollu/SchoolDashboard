import 'package:flutter/material.dart';

import '../../model.dart';

class FirstCardService {
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
      academicYears: ['2025-26', '2024-25', '2023-24'],
      selectedYear: '0',
      startDate: '01 Apr 2025',
      endDate: '31 Mar 2026',
      personIcon: Icons.person_4_outlined);
}
