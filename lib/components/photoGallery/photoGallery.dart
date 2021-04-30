import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:igreplicate/components/tab/tab.dart';
import 'file:///C:/Alam/Flutter%20Development/ig_replicate/ig_replicate/lib/components/imagePage/imagePage.dart';

class PhotoGallery extends StatefulWidget {
  PhotoGallery({Key key, this.itemCount: 8}) : super(key: key);

  final itemCount;

  @override
  _PhotoGalleryState createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
  @override
  Widget build(BuildContext context) {
    return new StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      itemCount: widget.itemCount,
      itemBuilder: (BuildContext context, int index) => new Container(
        color: Colors.black,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ImagePage()));
          },
          child: Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                fit: BoxFit.contain,
                image: new NetworkImage("https://i.imgur.com/BoN9kdC.png"),
              ),
            ),
          ),
        ),
//        new Center(
//          child: new CircleAvatar(
//            backgroundColor: Colors.white,
//            child: new Text('$index'),
//          ),
//        ),
      ),
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(2, widget.itemCount / 8),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );
  }
}
