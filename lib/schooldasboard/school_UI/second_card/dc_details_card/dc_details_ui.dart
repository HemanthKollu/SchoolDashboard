import 'package:flutter/material.dart';
import 'package:school_dashboard_app/schooldasboard/school_UI/second_card/dc_details_card/dc_details_service.dart';

class DcDetails extends StatefulWidget {
  const DcDetails({super.key});

  @override
  State<DcDetails> createState() => _DcDetailsState();
}

class _DcDetailsState extends State<DcDetails> {
  DcDetailsService service = DcDetailsService();

  @override
  void initState() {
    super.initState();
    service.getDcDetails();
    
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Card(
        elevation: 2,
        color: Theme.of(context).colorScheme.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),

        // width: screenWidth * 0.35,
        // height: 400,
        // margin: const EdgeInsets.only(left: 13, right: 10, bottom: 16),
        // decoration: BoxDecoration(
        //   color: Theme.of(context).colorScheme.background,
        //   borderRadius: BorderRadius.circular(16),
        // ),
        child: SizedBox(
          width: screenWidth * 0.40,
          height: 390,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFDB6400),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Text(
                        'Dc Details',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      '04/Jan',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Icon(Icons.arrow_forward_sharp),
                    Text(
                      '15/Feb',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Icon(Icons.arrow_forward_sharp),
                    Text(
                      'N/A',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(service.dcDetails.length, (index) {
                      final dcList = service.dcDetails[index];
                      return Column(
                        children: [
                          Container(
                            height: 25,
                            width: 40,
                            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Text(
                                dcList.className,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Container(
                            height: 25,
                            width: 40,
                            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Text(
                                dcList.students.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Container(
                            height: 25,
                            width: 40,
                            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Text(
                                dcList.totalAmount.toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                  ],
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    '04/Jan',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Icon(Icons.arrow_forward_sharp),
                  Text(
                    '15/Feb',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Icon(Icons.arrow_forward_sharp),
                  Text(
                    'N/A',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(service.dcDetails.length, (index) {
                      final dcList = service.dcDetails[index];
                      return Column(
                        children: [
                          Container(
                            height: 25,
                            width: 40,
                            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Text(
                                dcList.className,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Container(
                            height: 25,
                            width: 40,
                            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Text(
                                dcList.students.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Container(
                            height: 25,
                            width: 40,
                            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Text(
                                dcList.totalAmount.toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
