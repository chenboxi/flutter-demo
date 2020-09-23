import 'package:flutter/material.dart';
import 'package:flutter_shop/common/icons.dart';
import 'home/index.dart';
import 'goods/index.dart';
import 'commonly_use/index.dart';
import 'cart/index.dart';
import 'my/index.dart';

class AppPage extends StatefulWidget {
  AppPage({Key key}) : super(key: key);

  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  int _currentIndex = 0;
  List<BottomNavigationBarItem> _bottomNavigationBarItems;
  List<StatefulWidget> _pageList;
  StatefulWidget _currentPage;

  @override
  void initState() {
    super.initState();
    // 底部导航
    _bottomNavigationBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(MyIcons.home),
        title: Text('首页'),
      ),
      BottomNavigationBarItem(
        icon: Icon(MyIcons.apps),
        title: Text('全部菜品'),
      ),
      BottomNavigationBarItem(
        icon: Icon(MyIcons.sort),
        title: Text('常用清单'),
      ),
      BottomNavigationBarItem(
        icon: Icon(MyIcons.cart),
        title: Text('购物车'),
      ),
      BottomNavigationBarItem(
        icon: Icon(MyIcons.people),
        title: Text('我的'),
      ),
    ];

    // tab-页面
    _pageList = <StatefulWidget>[
      HomePage(),
      GoodsPage(),
      CommonlyUsePage(),
      CartPage(),
      MyPage(),
    ];
    _currentPage = _pageList[_currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavigationBar = BottomNavigationBar(
      items: _bottomNavigationBarItems,
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
          _currentPage = _pageList[_currentIndex];
        });
      },
    );

    return Scaffold(
      body: Center(
        child: _currentPage,
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
