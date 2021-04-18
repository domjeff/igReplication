import 'package:flutter/material.dart';

class CircleImageButton extends StatefulWidget {
  CircleImageButton({Key key, this.isBorder: false}) : super(key: key);

  bool isBorder;

  @override
  _CircleImageButtonState createState() => new _CircleImageButtonState();
}

class _CircleImageButtonState extends State<CircleImageButton> {
  bool isBorder;

  @override
  initState() {
    isBorder = widget.isBorder;
    super.initState();
  }

  Border _generateBorder() {
    Border output;
    if (isBorder) {
      return Border.all(
        width: 5,
        color: Color(0xFFFFFF00),
        style: BorderStyle.solid,
      );
      return Border.all(
        width: 0,
      );
    }
  }

  void _changeBorder() {
    setState(() {
      isBorder = !isBorder;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          child: new Container(
            width: 80.0,
            height: 80.0,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
//            borderRadius: BorderRadius.circular(30.0),
              border: _generateBorder(),
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: new NetworkImage("https://i.imgur.com/BoN9kdC.png"),
              ),
            ),
          ),
          onTap: _changeBorder,
        ),
        new Text("John Doe", textScaleFactor: 1.5),
      ],
    ));
  }
}
