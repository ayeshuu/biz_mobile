import 'package:flutter/material.dart';

class PoDetailWidget extends StatelessWidget {
  
   PoDetailWidget({super.key,required this.podata});
  final dynamic podata;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(podata["ponumber"]),
      ),
      body: Center(
        child: Text('Detail page'),
      ),
    );
  }
}
