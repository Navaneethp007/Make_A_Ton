import 'package:daily_deals/pages/login.dart';
import 'package:daily_deals/pages/addto.dart';
import 'package:daily_deals/pages/bodydet.dart';
import 'package:daily_deals/pages/cartcountitems.dart';
import 'package:daily_deals/pages/categories.dart';
import 'package:daily_deals/pages/colorsize.dart';
import 'package:daily_deals/pages/desc.dart';
import 'package:daily_deals/pages/detail_screen.dart';
import 'package:daily_deals/pages/favcount.dart';
import 'package:daily_deals/pages/forgot.dart';
import 'package:daily_deals/pages/home.dart';
import 'package:daily_deals/pages/itemcard.dart';
import 'package:daily_deals/pages/prod.dart';
import 'package:daily_deals/pages/prodimagetitle.dart';
import 'package:daily_deals/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() {
  runApp(const TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return const MaterialApp(
      
      home:LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
