import 'package:flutter/cupertino.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:igreplicate/components/imagePage/coment/coment.dart';
import 'package:igreplicate/components/imagePage/viewedPage.dart';
import 'package:igreplicate/components/circleButton/circleButton.dart';

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
          padding: EdgeInsets.only(left: 5, top: 5),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleImageButton(
                size: 45,
                withText: false,
              ),
//              Container(
//                padding: EdgeInsets.all(10),
//                child: Center(
//                  child: RichText(
//                    text: TextSpan(
//                        text: 'Comenters 1',
//                        style: TextStyle(
//                          fontWeight: FontWeight.bold,
//                          color: Colors.black,
//                          fontSize: 15,
//                        ),
//                        children: [
//                          TextSpan(
//                            text: 'Lorem ipsu ',
//                            style: TextStyle(
//                              fontWeight: FontWeight.normal,
//                            ),
//                          ),
//                        ]),
//                  ),
//                ),
//              ),
              Container(
                  color: Colors.black,
                  padding: EdgeInsets.all(10),
                  child: Center(
                      child: RichText(
                    text: TextSpan(
                      text:
                          'GitHub is a development platform inspired by the way you work. From ',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 9,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'open source',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                        TextSpan(
                            text: ' to ',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 9,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                          text: 'business,',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                        TextSpan(
                            text:
                                ' you can host and review code, manage projects, and build software alongside 36 million developers.',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 9,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ))),
            ],
          ),
        )
      ],
    );
  }
}
