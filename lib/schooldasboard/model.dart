import 'package:flutter/material.dart';

class SchoolInfo {
  final String schoolName;
  final String schoolCode;
  final bool isActive;
  final String principalName;
  final String principalEmail;
  final String principalPhone;
  final String schoolEmail;
  final String website;
  final String schoolPhone1;
  final String schoolPhone2;
  final String address1;
  final String address2;
  final List<String> academicYears;
  final String selectedYear;
  final String startDate;
  final String endDate;
  final IconData personIcon;

  SchoolInfo({
    required this.schoolName,
    required this.schoolCode,
    required this.isActive,
    required this.principalName,
    required this.principalEmail,
    required this.principalPhone,
    required this.schoolEmail,
    required this.website,
    required this.schoolPhone1,
    required this.schoolPhone2,
    required this.address1,
    required this.address2,
    required this.academicYears,
    required this.selectedYear,
    required this.startDate,
    required this.endDate,
    required this.personIcon,
  });

  factory SchoolInfo.fromJSON(dynamic data) {
    return SchoolInfo(
        schoolName: data["SCHOOL_NAME"],
        schoolCode: data["SCHOOL_CODE"],
        isActive: data["IS_ACTIVE"],
        principalName: data['PRINCIPA_NAME'],
        principalEmail: data['PRINCIPAL_EMAIL'],
        principalPhone: data['PRINCIPAL_NO'],
        schoolEmail: data['SCHOOL_EMAIL'],
        website: data['WEBSITE'],
        schoolPhone1: data['SCHOOL_NO_1'],
        schoolPhone2: data['SCHOOL_NO_2'],
        address1: data['ADDRESS_1'],
        address2: data['ADDRESS_2'],
        academicYears: data['ACADEMIC_YEARS'],
        selectedYear: data["SELECTED_YEAR"],
        startDate: data['START_DATE'],
        endDate: data['END_DATE'],
        personIcon: data['PERSON_ICON']);
  }
}

class ClassesInfo {
  final String noOfSchools;
  final String noOfPersons;
  final String schoolTime;

  ClassesInfo({required this.noOfSchools, required this.noOfPersons, required this.schoolTime});

  factory ClassesInfo.fromJSON(dynamic data) {
    return ClassesInfo(
      noOfSchools: data["NO_OF_SCHOOLS"],
      noOfPersons: data["NO_OF_PERSONS"],
      schoolTime: data["SCHOOL_TIME"],
    );
  }
}

class GradeModel {
  final String label;

  GradeModel({required this.label});

  factory GradeModel.fromJSON(dynamic data) {
    return GradeModel(label: data["CLASS_NAME"]);
  }
}

class SupportVisitInfoModel {
  final String date;
  final String color;
  final Icon tickIcon;

  SupportVisitInfoModel({required this.date, required this.color, required this.tickIcon});

  factory SupportVisitInfoModel.fromJSON(dynamic data) {
    return SupportVisitInfoModel(date: data['DATE'], color: data['COLOR'], tickIcon: data['TICK_ICON']);
  }
}

class SupportsTicketsModel {
  final String titleName;
  final String timeAndDate;
  final IconData icon;
  final Color color;
  final Color lineColor;

  SupportsTicketsModel({required this.titleName, required this.timeAndDate, required this.icon, required this.color, required this.lineColor});

  factory SupportsTicketsModel.fromJSON(dynamic data) {
    return SupportsTicketsModel(titleName: data['TITLE_NAME'], timeAndDate: data['TITLE_NAME'], icon: data['TITLE_NAME'], color: data['TITLE_NAME'], lineColor: data['TITLE_NAME']);
  }
}

class DcDetailsModel {
  final String className;
  final int students;
  final int totalAmount;

  DcDetailsModel({required this.className, required this.students, required this.totalAmount});

  factory DcDetailsModel.fromJSON(dynamic data) {
    return DcDetailsModel(className: data['STUDENTS'], students: data['STUDENTS'], totalAmount: data['STUDENTS']);
  }
}

class FinanceModel {
  final String receivedDate;
  final String receivedAmount;
  final Icon currencyIcon;

  FinanceModel({
    required this.receivedAmount,
    required this.receivedDate,
    required this.currencyIcon,
  });

  factory FinanceModel.fromJSON(dynamic data) {
    return FinanceModel(receivedAmount: data['RECEIVED_DATE'], receivedDate: data['RECEIVED_DATE'], currencyIcon: data['RECEIVED_DATE']);
  }
}
