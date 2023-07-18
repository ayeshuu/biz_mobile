import 'package:biz_mobile/screens/order/purchaselist.dart';
import 'package:biz_mobile/util/bizcolor.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';

class BizAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    
      
      return Scaffold(
        body: ColorfulSafeArea(
          color: Colors.white,
          child: DefaultTabController(
            length: 2,
            child: NestedScrollView(
                floatHeaderSlivers: true,
              headerSliverBuilder: (context, value) {
                return [
                  SliverAppBar(
                    floating: true,
                    snap: true,
                    backgroundColor: Colors.white,
                    title:  Text("Order",style: textTheme.headlineSmall, ),
                    bottom: TabBar(
                      tabs: const [
                        Tab(text: 'Purchase'),
                        Tab(text: 'Sales'),
                      ],
                      labelStyle: textTheme.titleMedium,
                      labelColor: BizColor.primary_colo,
                      indicatorColor: BizColor.primary_colo,
                      unselectedLabelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.label,
                    ),
                  ),
                ];
              },
              body: const TabBarView(
                children: [OrderPurchaseListing(), OrderPurchaseListing()],
                //children: [ScrollViewTest(), OrderPage()],
              ),
            ),
          ),
        ),
      );
    
  }

//   Widget buildImages() => GridView.builder(
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//         ),
//         itemCount: 20,
//         itemBuilder: (context, index) => ImageWidget(index: index),
//       );
// }
}
