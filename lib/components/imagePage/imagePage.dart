import 'package:flutter/cupertino.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:igreplicate/components/imagePage/coment/coment.dart';
//import 'package:bubble/bubble.dart';
import 'package:igreplicate/components/imagePage/viewedPage.dart';

class ImagePage extends StatefulWidget {
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  bool tagVisibility = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.tagVisibility = false;
  }

  void manageTagVisibility(bool currentTagVisibility) {
    setState(() {
      tagVisibility = !currentTagVisibility;
    });
  }

  bool showTag() {
    if (this.tagVisibility == null) {
      return false;
    }
    return this.tagVisibility;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        viewedImage(),
        Container(
          constraints: BoxConstraints(
            minHeight: 20,
            minWidth: double.infinity,
            maxHeight: 40,
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 2, // 20%
                child: Container(color: Colors.red),
              ),
              Expanded(
                flex: 6, // 60%
                child: Container(color: Colors.green),
              ),
              Expanded(
                flex: 2, // 20%
                child: Container(color: Colors.blue),
              )
            ],
          ),
        ),
      ],
    );
  }
}
