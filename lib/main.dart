import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MaterialApp(
      home: ImageSilderDemo(),
      debugShowCheckedModeBanner: false,
    ));

final images = [
  Image.asset('images/burger_1.png'),
  Image.asset('images/burger_3.png'),
  Image.asset('images/burger_2.png'),
  Image.asset('images/burger_4.png'),
];

class ImageSilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Images Scroll'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Images',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          CarouselSlider(items: images, options: CarouselOptions(
            aspectRatio: 1.0,
            scrollDirection: Axis.horizontal,
            autoPlay: true,
          ),)
        ],
      ),
    );
  }
}
