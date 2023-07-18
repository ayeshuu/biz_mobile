import 'package:biz_mobile/datafolder/ordermodel.dart';
import 'package:biz_mobile/util/data.dart';
import 'package:biz_mobile/widgets/commonwidgets/filters.dart';
import 'package:biz_mobile/widgets/order/ordercard.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class OrderPurchaseListing extends StatelessWidget {
  const OrderPurchaseListing();
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPinnedHeader(
            child: Center(
                //color: Colors.blue,

                child: FilterRow()),
          ),
          MultiSliver(children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: OrderData.allData.length,
              itemBuilder: (context, index) => MyCardWidget(data:OrderData.allData[index]),
            )
          ])
        ],
      ),
    );
  }
}
