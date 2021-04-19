import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

const List<StaggeredTile> stagTiles = <StaggeredTile>[
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 1),
  // StaggeredTile.count(1, 1),
  // StaggeredTile.count(1, 1),
  // StaggeredTile.count(2, 2),
  // StaggeredTile.count(1, 2),
  // StaggeredTile.count(1, 1),
  // StaggeredTile.count(3, 1),
  // StaggeredTile.count(1, 1),
  // StaggeredTile.count(4, 1),
];

List<Widget> _tiles = <Widget>[
  designTile(Colors.green, Icons.add_business_outlined, '/neworder'),
  designTile(Colors.lightBlue, Icons.description_outlined, '/dashboard'),
  // designTile(Colors.amber, Icons.book_online_outlined),
  // designTile(Colors.brown, Icons.bar_chart),
  // designTile(Colors.deepOrange, Icons.send),
  // designTile(Colors.indigo, Icons.airline_seat_flat),
  // designTile(Colors.red, Icons.bluetooth),
  // designTile(Colors.pink, Icons.battery_alert),
  // designTile(Colors.purple, Icons.desktop_windows),
  // designTile(Colors.blue, Icons.radio),
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Ladachi SDN BHD'),
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: StaggeredGridView.count(
              crossAxisCount: 4,
              staggeredTiles: stagTiles,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              padding: const EdgeInsets.all(4),
              children: _tiles,
            )));
  }
}

class designTile extends StatelessWidget {
  const designTile(this.backgroundColor, this.iconData, this.routeName);

  final Color backgroundColor;
  final IconData iconData;
  // final String heading;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: backgroundColor,
        child: InkWell(
          onTap: () => Navigator.pushNamed(context, routeName),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Icon(
                iconData,
                color: Colors.white,
              ),
            ),
          ),
        ));
  }
}
