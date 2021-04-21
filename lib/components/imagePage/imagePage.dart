import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

class ImagePage extends StatefulWidget {
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  bool tagVisibility = false;

  @override
  void initState() {
    // TODO: implement initState
    this.tagVisibility = false;
    super.initState();
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
        Container(
          child: Stack(
            children: [
              Positioned(
                child: GestureDetector(
                  onTap: () {
                    manageTagVisibility(showTag());
                  },
                  child: Container(
                    color: Colors.transparent,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
              Visibility(
                visible: showTag(),
                child: Positioned(
                  top: MediaQuery.of(context).size.width * 0.5,
                  left: MediaQuery.of(context).size.width * 0.5,
                  child: Bubble(
                    stick: true,
                    nip: BubbleNip.leftTop,
                    nipHeight: 30,
                    nipWidth: 10,
                    color: Color.fromARGB(150, 47, 51, 55),
                    child: Text(
                      "tagged user 1",
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 5,
                left: 5,
                child: GestureDetector(
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: Icon(
                      Icons.tag_faces,
                      color: Colors.white,
                      size: 33,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ),
                ),
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: NetworkImage("https://i.imgur.com/BoN9kdC.png"),
            ),
          ),
        ),
      ],
    );
  }
}
