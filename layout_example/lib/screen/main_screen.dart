import 'package:flutter/material.dart';
import 'package:layout_example/page.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  void onIndexChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            //UserAccountsDrawerHeader(
            //currentAccountPicture: CircleAvatar(
            // backgroundImage: NetworkImage(
            //     "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Gatto_europeo4.jpg/800px-Gatto_europeo4.jpg"),
            // ),
            //  accountName: Text("Pisut Punsombut"),
            // accountEmail: Text("61223224@cmru.ac.th"),
            // ),
            DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https:www.templatemonster.com/blog/wp-content/uploads/2016/04/1-9-2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                    child: Column(
                  children: [CircleAvatar(), Text("ชื่อวัด")],
                ))),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("Profile"),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(pages[currentIndex].title),
      ),
      body: pages[currentIndex].page,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onIndexChanged,
        items: pages
            .map(
              (page) => BottomNavigationBarItem(
                icon: page.icon,
                label: page.label,
              ),
            )
            .toList(),
      ),
    );
  }
}
