import 'package:flutter/material.dart';
import 'package:igreplicate/components/circleButton/circleButton.dart';

class TopItems extends StatefulWidget {
  @override
  _TopItemsState createState() => _TopItemsState();
}

class _TopItemsState extends State<TopItems> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleImageButton(),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.follow_the_signs,
                color: Colors.green,
                size: 80.0,
              ),
              Text("Followers", textScaleFactor: 1.5),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite,
              color: Colors.blue,
              size: 80.0,
            ),
            Text(
              "Following",
              textScaleFactor: 1.5,
            )
          ],
        ),
      ],
    );
  }
}
