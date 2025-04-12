import 'package:flutter/material.dart';
import 'package:school_dashboard_app/schooldasboard/school_UI/second_card/finance_card/finance_service.dart';

class FinanceCard extends StatefulWidget {
  const FinanceCard({super.key});

  @override
  State<FinanceCard> createState() => _FinanceCardState();
}

class _FinanceCardState extends State<FinanceCard> {
  FinanceService service = FinanceService();

  @override
  void initState() {
    super.initState();
    service.getFinanceDetails();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.35,
      height: 350,
      margin: const EdgeInsets.only(left: 13, bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Finance',
                style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                'View All',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  FilledButton.tonal(
                    onPressed: () => {},
                    style: FilledButton.styleFrom(backgroundColor: Colors.grey.shade400, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      '5,00,000',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 40,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.black, width: 1),
                        right: BorderSide(color: Colors.black, width: 1),
                        left: BorderSide(color: Colors.black, width: 1),
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  FilledButton.tonal(
                    onPressed: () => {},
                    style: FilledButton.styleFrom(backgroundColor: Colors.grey.shade400, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      '3,50,000',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFF32a8a8),
                      border: Border(
                        bottom: BorderSide(color: Colors.black, width: 1),
                        right: BorderSide(color: Colors.black, width: 1),
                        left: BorderSide(color: Colors.black, width: 1),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Next Committed Date',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '25 Apr 2025',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: 350,
                    child:  Column(children:
                    
                    
                    
                    List.generate(service.financeDetails.length, (index) {
                    final financeList = service.financeDetails[index];
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              financeList.receivedDate,
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            financeList.currencyIcon,
                            Text(
                              financeList.receivedAmount,
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            // if (index != service.financeDetails.length - 1)
                            // Divider(color: Colors.black,)
                            // Row(
                            //   children: [
                            //     financeList.currencyIcon,
                            //     Text(
                            //       financeList.receivedAmount,
                            //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                            //     ),
                            //   ],
                            // ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        
                          const Divider(
                            color: Colors.black,
                            thickness: 1,
                            height: 20,
                          )
                      ],
                    );
                  }),
                  )
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
