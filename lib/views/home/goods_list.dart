import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GoodsList extends StatefulWidget {
  GoodsList({Key key}) : super(key: key);

  @override
  _GoodsListState createState() => _GoodsListState();
}

class _GoodsListState extends State<GoodsList> {
  @override
  Widget build(BuildContext context) {
    // return Text('商品列表');
    return SliverStaggeredGrid.countBuilder(
      crossAxisCount: 4,
      itemCount: 9,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.all(15.0),
          height: 230.0,
          color: Colors.green,
          child: Center(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text('$index'),
            ),
          ),
        );
      },
      staggeredTileBuilder: (_) => StaggeredTile.fit(2),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );
  }
}
