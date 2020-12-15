import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.orange),
              tooltip: 'Search',
              onPressed: null,
            ),
          ],
        ),
        body: MyStatelessWidget(),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.deepOrange,
            onPressed: () {}),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.explore, color: Colors.black),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined, color: Colors.black),
              label: 'Map',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined, color: Colors.black),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined, color: Colors.black),
              label: 'Person',
            ),
          ],
          selectedItemColor: Colors.black,
        ),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text('#News',
              maxLines: 2,
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.start),
          Expanded(
            child: Container(
              child: const Center(
                child: ListTile(
                  title: Text(
                      'Space x: l'
                      'essai du prototype "Starship" se conduit par un crash',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle:
                      Text('\n Publie aujourd"hui a10h07,mis a jour a 11h02'),
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
            height: 20,
            thickness: 2,
            indent: 15,
            endIndent: 15,
          ),
          Expanded(
            child: Container(
              child: const Center(
                child: ListTile(
                  title: Text(
                      '"Le cinéma interieur" :notre cerveau,ce studio ou nous nous faisons des films ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle:
                      Text('\nPublie aujourdhui a 00h00  , Catherine Mary'),
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 2,
            indent: 15,
            endIndent: 15,
          ),
          Expanded(
            child: Container(
              child: const Center(
                child: ListTile(
                  title: Text(
                      '"Si je peux le faire ,vous aussi en etes capables":la lycéenne américaine Gitanjali Rao désignée "enfant de l année" par "Time"',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('\nPublie le mardi 10h00,mis a jour a 10h33'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
