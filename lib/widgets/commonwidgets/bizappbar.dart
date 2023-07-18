//import 'package:biz_mobile/util/bizcolor.dart';
import 'package:biz_mobile/util/bizcolor.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

    const CustomAppBar( this.appheader, this.tab1,  this.tab2, {super.key});
    final String? tab1;
    final String? tab2;
    final String? appheader;
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return AppBar(
      backgroundColor: Colors.white,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    Icons.menu_rounded,
                    color: Colors.black87,
                  ),
                ),
                onTap: () {},
              ),
            ),
            Expanded(
              child: Text(
                appheader!,
                style: textTheme.headlineSmall,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    Icons.notifications_outlined,
                    color: Colors.black87,
                  size: 24,
                  ),
                ),
                onTap: () {},
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    Icons.settings_outlined,
                    color: Colors.black87,
                  ),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
      bottom: TabBar(
        tabs: [
          Tab(text: tab1,),
          Tab(text: tab2),
        ],
      
        labelStyle: textTheme.titleMedium,
        labelColor: BizColor.primary_colo,
        indicatorColor: BizColor.primary_colo,
        unselectedLabelColor: Colors.black,
        indicatorSize:  TabBarIndicatorSize.label,
        
        
       
      ),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100);
}
