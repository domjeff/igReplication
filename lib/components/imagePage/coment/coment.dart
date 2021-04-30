import 'package:flutter/material.dart';

class comment extends StatefulWidget {
  @override
  _commentState createState() => _commentState();
}

class _commentState extends State<comment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                height: double.infinity,
                width: 30,
                color: Colors.red,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                      fit: BoxFit.contain,
                      image:
                          new NetworkImage("https://i.imgur.com/BoN9kdC.png"),
                      alignment: Alignment.topLeft),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
