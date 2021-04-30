import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:igreplicate/components/imagePage/viewedImages/viewedImage.dart';

class viewedImages extends StatefulWidget {
  int length;

  viewedImages({
    Key key,
    this.length = 4,
  }) : super(key: key);

  @override
  _viewedImagesState createState() => _viewedImagesState();
}

class _viewedImagesState extends State<viewedImages> {
  int imageIndex;
  int length;

  @override
  initState() {
    this.length = widget.length;
    this.imageIndex = 0;
    super.initState();
  }

  List<Widget> getWidget() {
    List<Widget> res = [];
    for (int i = 0; i < this.length; i++) {
      res += [
        Container(
          width: 8.0,
          height: 8.0,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: this.imageIndex == i
                ? Color.fromRGBO(0, 30, 0, 0.9)
                : Color.fromRGBO(0, 30, 0, 0.4),
          ),
        ),
      ];
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                height: MediaQuery.of(context).size.width,
                viewportFraction: 1,
                onPageChanged: (int index, CarouselPageChangedReason a) {
                  setState(
                    () {
                      this.imageIndex = index;
                    },
                  );
                }),
            items: () {
              List<int> res = [];
              for (int i = 0; i < this.length; i++) {
                res += [i];
              }
              return res;
            }()
                .map(
              (i) {
                return Builder(
                  builder: (BuildContext context) {
                    return viewedImage();
//                      Container(
//                      width: MediaQuery.of(context).size.width,
//                      decoration: BoxDecoration(
//                        color: i % 2 == 1 ? Colors.amber : Colors.blue,
//                      ),
//                      child: Text(
//                        'text $i',
//                        style: TextStyle(fontSize: 16.0),
//                      ),
//                    );
                  },
                );
              },
            ).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: getWidget(),
          )
        ],
      ),
    );
  }
}
