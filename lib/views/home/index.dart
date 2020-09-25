import 'package:flutter/material.dart';
import 'ad_banner.dart';
import 'goods_category.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AdBanner(),
        GoodsCategory(),
      ],
    );
  }
}
