import 'package:biz_mobile/util/bizcolor.dart';
import 'package:flutter/material.dart';

class FilterRow extends StatelessWidget {
  const FilterRow({super.key});
  @override
  Widget build(BuildContext context) {
    //TextTheme textTheme = Theme.of(context).textTheme;
    return ClipRRect(
      
      child: Card(
        // shape:const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(16),
        //     bottomRight: Radius.circular(16),
        //   ),
        // ),
        margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
        elevation: 0.0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  
                  style:TextStyle(),
                  decoration: InputDecoration(
                   // filled: true,
                   // isCollapsed: true,
                    isDense: true,
                    contentPadding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                   // labelText: 'Search for PO',
                    hintText: 'Search Here',
        
                    suffixIcon: Icon(Icons.search_outlined)
                    
                    
                  ),
                  
                ),
              ),
              IconButton(
                onPressed: () {
                  // Handle filter icon button press
                },
                icon: Icon(Icons.filter_list),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
