import '../../../model.dart';

class ClassesCardService {
  List<GradeModel> gradeOne = List<GradeModel>.empty(growable: true);
  List<GradeModel> gradeTwo = List<GradeModel>.empty(growable: true);

  void grades() {
    gradeOne.addAll([
      GradeModel(label: 'Nursey'),
      GradeModel(label: 'L.K.G'),
      GradeModel(label: 'U.K.G'),
      GradeModel(label: 'Grade - 1'),
      GradeModel(label: 'Grade - 2'),
      GradeModel(label: 'Grade - 3'),
      GradeModel(label: 'Grade - 4'),
    ]);

    gradeTwo.addAll([
      GradeModel(label: 'Grade - 5'),
      GradeModel(label: 'Grade - 6'),
      GradeModel(label: 'Grade - 7'),
      GradeModel(label: 'Grade - 8'),
      GradeModel(label: 'Grade - 9'),
      GradeModel(label: 'Grade - 10'),
    ]);
  }

  final classesData = ClassesInfo(noOfSchools: '111', noOfPersons: '222', noOfSchools1: '333', noOfPersons1: "444" );
}
