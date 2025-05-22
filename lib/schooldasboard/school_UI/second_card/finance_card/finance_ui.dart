import 'package:flutter/material.dart';
import 'package:school_dashboard_app/schooldasboard/model.dart';
import 'package:school_dashboard_app/schooldasboard/school_UI/second_card/finance_card/finance_service.dart';

class FinanceCard extends StatefulWidget {
  const FinanceCard({super.key});

  @override
  State<FinanceCard> createState() => _FinanceCardState();
}

class _FinanceCardState extends State<FinanceCard> {
  FinanceService service = FinanceService();
  List<FinanceModel> _commitmentsList = [];
  List<FinanceModel> _paymentHistoryList = [];

  @override
  void initState() {
    super.initState();
    _commitmentsList = service.getCommitmentsDetails();
    _paymentHistoryList = service.getPaymentHistoryDetails();
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
        child: SizedBox(
          width: screenWidth * 0.40,
          height: 385,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFDB6400),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Text(
                        'Finance',
                        style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.currency_rupee, size: 20),
                        Text("5,00,000", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 330,
                          decoration: BoxDecoration(
                            color: Color(0xFF32a8a8),
                            border: Border(
                              top: BorderSide(color: Colors.black, width: 1),
                              bottom: BorderSide(color: Colors.black, width: 1),
                              left: BorderSide(color: Colors.black, width: 1),
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 330,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              top: BorderSide(color: Colors.black, width: 1),
                              right: BorderSide(color: Colors.black, width: 1),
                              bottom: BorderSide(color: Colors.black, width: 1),
                            ),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.currency_rupee, size: 20),
                            Text("2,75,000", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.currency_rupee, size: 20),
                            Text("2,25,000", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFDB6400),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                      child: Text("Commitments", style: TextStyle(fontSize: 14, color: Colors.white)),
                                    )),
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                  height: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ListView.builder(
                                        itemCount: _commitmentsList.length,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            padding: const EdgeInsets.symmetric(vertical: 2.0),
                                            margin: const EdgeInsets.only(bottom: 5),
                                            decoration: BoxDecoration(
                                              color: Theme.of(context).colorScheme.background,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Column(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Theme.of(context).colorScheme.background,
                                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(3.0),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          _commitmentsList[index].receivedDate,
                                                          style: const TextStyle(fontSize: 13),
                                                        ),
                                                        const Row(
                                                          children: [
                                                            Icon(Icons.currency_rupee, size: 15),
                                                            Text("1,00,000",
                                                                style: TextStyle(
                                                                  fontSize: 13,
                                                                )),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFDB6400),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                      child: Text("Payment History", style: TextStyle(fontSize: 14, color: Colors.white)),
                                    )),
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                  height: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: _paymentHistoryList.length,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            padding: const EdgeInsets.symmetric(vertical: 2.0),
                                            margin: const EdgeInsets.only(bottom: 5),
                                            decoration: BoxDecoration(
                                              color: Theme.of(context).colorScheme.background,
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Column(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Theme.of(context).colorScheme.background,
                                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(3.0),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          _paymentHistoryList[index].receivedDate,
                                                          style: const TextStyle(fontSize: 13),
                                                        ),
                                                        const Row(
                                                          children: [
                                                            Icon(Icons.currency_rupee, size: 15),
                                                            Text("1,00,000",
                                                                style: TextStyle(
                                                                  fontSize: 13,
                                                                )),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                  ))
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
