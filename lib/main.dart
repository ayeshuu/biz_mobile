
 

import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:biz_mobile/themes/theme.dart';

import 'package:biz_mobile/widgets/commonwidgets/tabs.dart';



void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme ,
      
      home: const TabsScreen(),
    );  
  }
}