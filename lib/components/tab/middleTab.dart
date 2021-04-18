import 'package:flutter/material.dart';
import 'package:igreplicate/components/photoGallery/photoGallery.dart';

class Tab2 extends StatefulWidget {
  @override
  _Tab2State createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Expanded(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: TabBar(
                tabs: [
                  Tab(
                    icon: const Icon(Icons.home),
                    text: 'Address',
                  ),
                  Tab(
                    icon: const Icon(Icons.my_location),
                    text: 'Location',
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 5),
//                height: 80.0,
                child: TabBarView(
                  children: <Widget>[
//                    Card(
//                      child: ListTile(
//                        isThreeLine: true,
//                        subtitle: Text("Alam"),
//                        leading: const Icon(Icons.home),
//                        title: TextField(
//                          decoration: const InputDecoration(
//                              hintText: 'Search for address...'),
//                        ),
//                      ),
//                    ),
                    PhotoGallery(),
                    Card(
                      child: ListTile(
                        leading: const Icon(Icons.location_on),
                        title: Text('Latitude: 48.09342\nLongitude: 11.23403'),
                        trailing: IconButton(
                            icon: const Icon(Icons.my_location),
                            onPressed: () {}),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
