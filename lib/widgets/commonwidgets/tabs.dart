import 'package:biz_mobile/screens/Invoice/invoicescreen.dart';
import 'package:biz_mobile/screens/delivery/deliveryscreen.dart';
import 'package:biz_mobile/screens/order/bizbar.dart';
import 'package:biz_mobile/screens/order/orderlisting.dart';
import 'package:biz_mobile/screens/settlements/settlementscreen.dart';
//import 'package:biz_mobile/util/bizcolor.dart';
import 'package:flutter/material.dart';


class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

var appbar = true;


class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

 @override
  Widget build(BuildContext context) {
   Widget activePage =  BizAppBar();
   

    switch(_selectedPageIndex) { 
   case 1: { 
      activePage = const DeliveryScreen();
   } 
   break; 
  
   case 2: { 
      activePage = const InvoiceScreen();
   } 
   break; 

   case 3: { 
      activePage = const SettlementScreen();
   } 
   break; 
      
   default: { 
      activePage = BizAppBar(); 
   }
   break; 
} 

    return Scaffold(
      
      
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 4,
        type: BottomNavigationBarType.fixed,
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_shipping),
            label: 'Deliveries',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_snippet),
            label: 'Invoices',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: 'Settlements',
          ),
          
        ],
      ),
    );
  }
}