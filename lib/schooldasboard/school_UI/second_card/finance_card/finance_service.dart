import 'package:flutter/material.dart';

import '../../../model.dart';

class FinanceService {
  List<FinanceModel> financeDetails = List<FinanceModel>.empty(growable: true);

  void getFinanceDetails() {
    financeDetails.addAll([
      FinanceModel(
        receivedDate: '5 feb 2025',
        receivedAmount: '2,00,000',
        currencyIcon: Icon(Icons.currency_rupee_outlined),
      ),
      FinanceModel(
        receivedDate: '25 jan 2025',
        receivedAmount: '1,00,000',
        currencyIcon: Icon(Icons.currency_rupee_outlined),
      ),
      FinanceModel(
        receivedDate: '10 jan 2025',
        receivedAmount: '50,000',
        currencyIcon: Icon(Icons.currency_rupee_outlined),
      ),
    ]);
  }
}
