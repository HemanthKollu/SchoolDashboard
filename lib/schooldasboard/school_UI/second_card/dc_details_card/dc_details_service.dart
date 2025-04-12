import '../../../model.dart';

class DcDetailsService {
  List<DcDetailsModel> dcDetails = List<DcDetailsModel>.empty(growable: true);

  void getDcDetails() {
    dcDetails.addAll([
      DcDetailsModel(className: 'N', students: 24, totalAmount: 2000),
      DcDetailsModel(className: 'L', students: 24, totalAmount: 2000),
      DcDetailsModel(className: 'U', students: 24, totalAmount: 2000),
      DcDetailsModel(className: 'F', students: 24, totalAmount: 2000),
      DcDetailsModel(className: 'S', students: 24, totalAmount: 2000),
      DcDetailsModel(className: 'T', students: 24, totalAmount: 2000),
      DcDetailsModel(className: 'F', students: 24, totalAmount: 2000),
      DcDetailsModel(className: 'N', students: 24, totalAmount: 2000),
      DcDetailsModel(className: 'N', students: 24, totalAmount: 2000),
      DcDetailsModel(className: 'N', students: 24, totalAmount: 2000),
      DcDetailsModel(className: 'N', students: 24, totalAmount: 2000),
      DcDetailsModel(className: 'N', students: 24, totalAmount: 2000),
      DcDetailsModel(className: 'N', students: 24, totalAmount: 2000),
    ]);
  }
}
