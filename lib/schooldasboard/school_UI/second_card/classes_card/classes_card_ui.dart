import 'package:flutter/material.dart';
import 'package:school_dashboard_app/schooldasboard/school_UI/second_card/classes_card/classes_card_service.dart';

class ClassesCard extends StatefulWidget {
  const ClassesCard({super.key});

  @override
  State<ClassesCard> createState() => _ClassesCardState();
}

class _ClassesCardState extends State<ClassesCard> {
  ClassesCardService service = ClassesCardService();

  @override
  void initState() {
    service.grades();
    super.initState();
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
      // width: screenWidth * 0.72,
      // height: 100,
      // decoration: BoxDecoration(
      //   color: Theme.of(context).colorScheme.background,
      //   borderRadius: BorderRadius.circular(16),
      // ),
      child: SizedBox(
        width: double.infinity,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Icon(
                  Icons.school_outlined,
                  color: Colors.deepPurple,
                  size: 28,
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  service.classesData.noOfSchools,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Icon(
                  Icons.person_4_outlined,
                  color: Colors.greenAccent,
                  size: 28,
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  service.classesData.noOfPersons,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Row(
                  children: service.gradeOne.map((grade) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 1, right: 12, bottom: 0),
                      child: FilledButton.tonal(
                        onPressed: () => {},
                        style: FilledButton.styleFrom(
                            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
                            backgroundColor: Color(0xFFf58f4c),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                        child: Text(
                          grade.label,
                          style: const TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: service.gradeTwo.map(
                    (gradeTwo) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 5, right: 20, bottom: 0),
                        child: FilledButton.tonal(
                          onPressed: () => {},
                          style: FilledButton.styleFrom(
                              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
                              backgroundColor: Color(0xFFf58f4c),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                          child: Text(
                            gradeTwo.label,
                            style: const TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      );
                    },
                  ).toList(),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(
              width: 35,
            ),
            Row(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Icon(
                      Icons.school_outlined,
                      color: Colors.deepPurple,
                      size: 28,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      service.classesData.noOfSchools1,
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
                    )
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Icon(
                      Icons.person_4_outlined,
                      color: Colors.greenAccent,
                      size: 28,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      service.classesData.noOfPersons1,
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
                    )
                  ],
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
