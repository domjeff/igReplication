import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class viewedImages extends StatefulWidget {
  @override
  _viewedImagesState createState() => _viewedImagesState();
}

class _viewedImagesState extends State<viewedImages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          height: MediaQuery.of(context).size.width,
          viewportFraction: 1,
        ),
        items: [1, 2, 3, 4, 5].map(
          (i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: i % 2 == 1 ? Colors.amber : Colors.blue,
                  ),
                  child: Text(
                    'text_ $i',
                    style: TextStyle(fontSize: 16.0),
                  ),
                );
              },
            );
          },
        ).toList(),
      ),
    );
  }
}
