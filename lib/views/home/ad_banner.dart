import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AdBanner extends StatefulWidget {
  @override
  _AdBannerState createState() => new _AdBannerState();
}

class _AdBannerState extends State<AdBanner> {
  final List<String> imgList = [
    'http://p1.meituan.net/codeman/826a5ed09dab49af658c34624d75491861404.jpg',
    'https://p1.meituan.net/travelcube/01d2ab1efac6e2b7adcfcdf57b8cb5481085686.png',
    'http://p0.meituan.net/codeman/a97baf515235f4c5a2b1323a741e577185048.jpg',
    'http://p0.meituan.net/codeman/daa73310c9e57454dc97f0146640fd9f69772.jpg',
    'http://p0.meituan.net/codeman/33ff80dc00f832d697f3e20fc030799560495.jpg'
  ];
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 11 / 5,
            viewportFraction: 1.0,
            autoPlay: true,
            onPageChanged: ((index, reason) {
              print(reason);
              setState(() {
                _current = index;
              });
            }),
          ),
          items: imgList
              .map((item) => Container(
                    color: Colors.amber,
                    child: Image.network(item,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width),
                  ))
              .toList(),
          // items: [1, 2, 3, 4, 5].map((i) {
          //   return Builder(
          //     builder: (BuildContext context) {
          //       return Container(
          //         width: MediaQuery.of(context).size.width,
          //         // margin: EdgeInsets.symmetric(horizontal: 5.0),
          //         decoration: BoxDecoration(color: Colors.amber),
          //         child: Text('text $i', style: TextStyle(fontSize: 16.0)),
          //       );
          //     },
          //   );
          // }).toList(),
        ),
        Positioned(
          bottom: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
