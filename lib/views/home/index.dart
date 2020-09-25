import 'package:flutter/material.dart';
import 'ad_banner.dart';
import 'goods_category.dart';
import 'product_category.dart';
import 'goods_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   shrinkWrap: true,
    //   children: [
    //     AdBanner(),
    //     GoodsCategory(),
    //     CustomScrollView(
    //       slivers: [
    //         ProductCategory(),
    //       ],
    //     ),
    //   ],
    // );
    return CustomScrollView(
      slivers: [
        SliverSafeArea(sliver: SliverToBoxAdapter(child: AdBanner())),
        // SliverToBoxAdapter(child: AdBanner()),
        SliverToBoxAdapter(child: GoodsCategory()),
        // ProductCategory(),
        SliverSafeArea(sliver: ProductCategory()),
        // SliverToBoxAdapter(child: GoodsList()),
        GoodsList(),
      ],
    );
  }
}
