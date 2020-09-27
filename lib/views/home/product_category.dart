import 'package:flutter/material.dart';

class ProductCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      floating: true,
      delegate: _SliverHeaderDelegate(),
    );
  }
}

class _SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return ProductCategoryTabs();
  }

  @override
  double get maxExtent => 50.0;

  @override
  double get minExtent => 50.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class ProductCategoryTabs extends StatefulWidget {
  @override
  _ProductCategoryTabsState createState() => _ProductCategoryTabsState();
}

class _ProductCategoryTabsState extends State<ProductCategoryTabs>
    with SingleTickerProviderStateMixin {
  final List<Map> _tabValues = [
    {'key': 1, 'title': '人气推荐', 'subText': '大家爱买'},
    {'key': 2, 'title': '上海热卖', 'subText': '跟买不亏'},
    {'key': 3, 'title': '商城让利', 'subText': '售价直降'},
    {'key': 4, 'title': '中秋吃蟹', 'subText': '7.8元/只'},
    {'key': 5, 'title': '尝鲜果', 'subText': '好吃不贵'},
    {'key': 6, 'title': '云超特卖', 'subText': '1件包邮'},
  ];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tabValues.length);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TabBar(
        controller: _tabController,
        tabs: _tabValues
            .map((e) => Column(
                  children: [
                    Text(e['title']),
                    Text(e['subText'],
                        style: TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ))
            .toList(),
        isScrollable: true,
        labelColor: Colors.green,
        unselectedLabelColor: Colors.black,
      ),
    );
  }
}
