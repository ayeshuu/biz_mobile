import 'package:flutter/material.dart';

class SalesCardWidget extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    print(width);
    return Center(
      child: Column(
        children: [
          Container(
                height:106,
                width:width - 32,
            child: const Card(
              child: Padding(
                padding:  EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text('Sanjeev Mulchand Dogra'),
                        ),
                        
                          Text(''),
                        
                      ],
                    ),
                      SizedBox(height:10),
                    Row(
                      children: [
                        Expanded(
                          child: Text('PO/018897/20231'),
                        ),
                         Text('₹ 12,50,000'),
                        
                      ],
                    ),
                      SizedBox(height:10),
                    Row(
                      children: [
                        Expanded(
                          child: Text('10% Scheduled'),
                        ),
                         Text('Placed'),
                        
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
