// import 'package:biz_mobile/datafolder/ordermodel.dart';
// import 'package:biz_mobile/util/bizcolor.dart';
// import 'package:biz_mobile/widgets/commonwidgets/bizappbar.dart';
// import 'package:biz_mobile/widgets/commonwidgets/filters.dart';
// //import 'package:biz_mobile/util/bizcolor.dart';
// import 'package:biz_mobile/widgets/order/ordercard.dart';
// import 'package:biz_mobile/widgets/order/salescard.dart';
// import 'package:flutter/material.dart';

// class OrderScreen extends StatelessWidget {
//   const OrderScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // TextTheme textTheme = Theme.of(context).textTheme;
//     final dummyList = List.generate(100, (index) => OrderModel.items[0]);
//     return DefaultTabController(
//       initialIndex: 0,
//       length: 2,
//       child: Scaffold(
//         backgroundColor: BizColor.onPrimary,
//         appBar: CustomAppBar('Orders', 'Purchase', 'Sales'),
//         body: TabBarView(
//           children: [
//             Stack(
//               children: [
//                 SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       SizedBox(height: 80.0),
//                       ListView.builder(
//                         shrinkWrap: true,
//                         physics: NeverScrollableScrollPhysics(),
//                         itemCount: dummyList.length,
//                         itemBuilder: (context, index) => MyCardWidget(),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const Positioned(
//                   top: 0.0,
//                   left: 0.0,
//                   right: 0.0,
//                   child: FilterRow(),
//                 )
//               ],
//             ),

//             // Content for Tab 2

//             Scrollbar(
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     ListView.builder(
//                       shrinkWrap: true,
//                       physics: NeverScrollableScrollPhysics(),
//                       itemCount: dummyList.length,
//                       itemBuilder: (context, index) => SalesCardWidget(),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
