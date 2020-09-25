import 'package:flutter/material.dart';

class GoodsCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 12.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[350],
          width: 1,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300],
            offset: Offset(0.0, 5.0),
            blurRadius: 8.0,
            spreadRadius: 1.0,
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(0.0),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 6.0),
                    child: Column(
                      children: [
                        Container(
                            width: 48,
                            height: 48,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40.0),
                              child: Image.asset('imgs/category-vegetables.jpg',
                                  fit: BoxFit.cover),
                            )),
                        Text('新鲜蔬菜', overflow: TextOverflow.ellipsis),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(0.0),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 6.0),
                    child: Column(
                      children: [
                        Container(
                            width: 48,
                            height: 48,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset('imgs/category-meat.jpg',
                                  fit: BoxFit.cover),
                            )),
                        Text('肉禽', overflow: TextOverflow.ellipsis),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(0.0),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 6.0),
                    child: Column(
                      children: [
                        Container(
                            width: 48,
                            height: 48,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset('imgs/category-egg.jpeg',
                                  fit: BoxFit.cover),
                            )),
                        Text('鲜蛋', overflow: TextOverflow.ellipsis),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(0.0),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 6.0),
                    child: Column(
                      children: [
                        Container(
                            width: 48,
                            height: 48,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset('imgs/category-fruit.jpeg',
                                  fit: BoxFit.cover),
                            )),
                        Text('时令水果', overflow: TextOverflow.ellipsis),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(0.0),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 6.0),
                    child: Column(
                      children: [
                        Container(
                            width: 48,
                            height: 48,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset('imgs/category-rice.jpg',
                                  fit: BoxFit.cover),
                            )),
                        Text('米面粮油', overflow: TextOverflow.ellipsis),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(0.0),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 6.0),
                    child: Column(
                      children: [
                        Container(
                            width: 48,
                            height: 48,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset('imgs/category-fish.jpg',
                                  fit: BoxFit.cover),
                            )),
                        Text('海鲜水产', overflow: TextOverflow.ellipsis),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(0.0),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 6.0),
                    child: Column(
                      children: [
                        Container(
                            width: 48,
                            height: 48,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset('imgs/category-milk.jpg',
                                  fit: BoxFit.cover),
                            )),
                        Text('休闲乳品', overflow: TextOverflow.ellipsis),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(0.0),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 6.0),
                    child: Column(
                      children: [
                        Container(
                            width: 48,
                            height: 48,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset('imgs/category-seasoning.jpg',
                                  fit: BoxFit.cover),
                            )),
                        Text('调料干货', overflow: TextOverflow.ellipsis),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(0.0),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 6.0),
                    child: Column(
                      children: [
                        Container(
                            width: 48,
                            height: 48,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset('imgs/category-fast-food.jpg',
                                  fit: BoxFit.cover),
                            )),
                        Text('方便速食', overflow: TextOverflow.ellipsis),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(0.0),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 6.0),
                    child: Column(
                      children: [
                        Container(
                            width: 48,
                            height: 48,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset('imgs/category-activity.jpg',
                                  fit: BoxFit.cover),
                            )),
                        Text('领30元', overflow: TextOverflow.ellipsis),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
