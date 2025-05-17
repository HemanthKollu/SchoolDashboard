import 'package:flutter/material.dart';

import '../../../model.dart';

class FinanceService {
  List<FinanceModel> getCommitmentsDetails() {
    return [
      FinanceModel(
        receivedDate: '18/05',
        receivedAmount: '1,00,000',
      ),
      FinanceModel(
        receivedDate: '20/06',
        receivedAmount: '1,00,000',
      ),
      FinanceModel(
        receivedDate: '23/06',
        receivedAmount: '1,00,000',
      ),
      FinanceModel(
        receivedDate: '26/06',
        receivedAmount: '1,00,000',
      ),
      FinanceModel(
        receivedDate: '28/06',
        receivedAmount: '1,00,000',
      ),
      FinanceModel(
        receivedDate: '30/06',
        receivedAmount: '1,00,000',
      ),
    ];
  }
  List<FinanceModel> getPaymentHistoryDetails() {
    return [
      FinanceModel(
        receivedDate: '02/05',
        receivedAmount: '1,00,000',
      ),
      FinanceModel(
        receivedDate: '28/04',
        receivedAmount: '20,000',
      ),
      FinanceModel(
        receivedDate: '15/04',
        receivedAmount: '50,000',
      ),
      FinanceModel(
        receivedDate: '02/04',
        receivedAmount: '1,00,000',
      ),
      FinanceModel(
        receivedDate: '25/03',
        receivedAmount: '1,00,000',
      ),
      FinanceModel(
        receivedDate: '20/03',
        receivedAmount: '9,000',
      ),
      FinanceModel(
        receivedDate: '15/03',
        receivedAmount: '10,000',
      ),
      FinanceModel(
        receivedDate: '10/03',
        receivedAmount: '10,000',
      ),
      FinanceModel(
        receivedDate: '05/03',
        receivedAmount: '10,000',
      ),
    ];
  }
  
}
