import 'package:biz_mobile/util/bizcolor.dart';
import 'package:biz_mobile/widgets/commonwidgets/chips.dart';
import 'package:biz_mobile/widgets/order/detail/detail.dart';
import 'package:flutter/material.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({super.key, this.data});
  final dynamic data;
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        children: [
          Container(
            height: 106,
            width: width - 16,
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: BizColor.surfaceVariant),
                  borderRadius: BorderRadius.circular(8)),
              elevation: 0,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PoDetailWidget(podata:data,)),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                        child: Row(
                          children: [
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: InkWell(
                                          child: Padding(
                                            padding: const EdgeInsets.only(right:4),
                                            child: Icon(
                                              Icons.storefront_outlined,
                                              color: Colors.black54,
                                              size: 16,
                                            ),
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: data["company"],
                                      style: textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4.0),
                                      child: Icon(
                                        Icons.storefront_outlined,
                                        color: Colors.black54,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Via Bizongo',
                                    style: textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(2, 8, 0, 8),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    data["ponumber"],
                                    style: textTheme.titleSmall,
                                  ),
                                ),
                                Text(
                                  'INR ${data["amount"]}',
                                  style: textTheme.titleSmall,
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '${data["schedule"]}% scheduled',
                                    style: textTheme.bodySmall,
                                  ),
                                ),
                                Chips(),
                                //Text('Review Pending'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //SizedBox(height: 8),
                      Row(
                        children: [
                          //Text('Review Pending'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 8)
        ],
      ),
    );
  }
}
