import 'package:application_flutter/main.dart';
import 'package:application_flutter/pages/drawer.dart';
import 'package:application_flutter/pages/floating.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // bool_boolIcon=false;
  // IconData_lightIcon=Icons.wb_sunny;
  // IconData_darkIcon=Icons.nights_stay;

  // ThemeData_lightTheme=ThemeData(primaryColor: Colors.amber,
  // brightness: Brightness.light,
  // );
  // ThemeData_darkTheme=ThemeData(primaryColor: Colors.cyan,
  // brightness: Brightness.dark,
  // );

  @override
  Widget build(BuildContext context) {
    bool _boolIcon = false;
    IconData _lightIcon = Icons.wb_sunny;
    IconData _darktIcon = Icons.nights_stay;

    ThemeData _lightTheme = ThemeData(
      primaryColor: Colors.amber,
      brightness: Brightness.light,
    );
    ThemeData _darkTheme = ThemeData(
      primaryColor: Colors.red,
      brightness: Brightness.dark,
    );

    return MaterialApp(
      theme: _boolIcon ? _darkTheme : _lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dark Theme"),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _boolIcon = !_boolIcon;
                });
              },
              icon: Icon(
                _boolIcon ? _lightIcon : _darktIcon,
              ),
            ),
          ],
        ),

        // return DefaultTabController(
        //   length: 5,
        //   child: Scaffold(

        //     drawer: Drawer(
        //       child: drawer(),
        //     ),

        //     appBar: AppBar(
        //       backgroundColor: Color.fromARGB(255, 231, 137, 49),
        //       bottom: TabBar(
        //         tabs: [
        //           Tab(
        //             child: Text(
        //               "MU",
        //               style: TextStyle(
        //                 fontWeight: FontWeight.bold,
        //                 fontSize: 19,
        //                 color: Colors.black,
        //               ),
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.only(left: 0),
        //             child: Tab(
        //               child: Text(
        //                 "Top",
        //                 style: TextStyle(fontSize: 16, color: Colors.black),
        //               ),
        //             ),
        //           ),
        //           Tab(
        //             child: Text(
        //               "Hot",
        //               style: TextStyle(fontSize: 16, color: Colors.black),
        //             ),
        //           ),
        //           Tab(
        //             child: TextButton(
        //               onPressed: () {
        //                 Navigator.push(
        //                     context,
        //                     MaterialPageRoute(
        //                       builder: (context) => Floating(),
        //                     ));
        //               },
        //               child: Text(
        //                 "New",
        //                 style: TextStyle(color: Colors.black),
        //               ),
        //             ),
        //           ),
        //           Tab(
        //               child: IconButton(
        //             onPressed: () {},
        //             icon: Icon(
        //               Icons.notification_add,
        //               color: Colors.black,
        //             ),
        //           )),
        //         ],
        //       ),
        //     ),
        // bottomNavigationBar: Container(
        //   color: const Color.fromARGB(255, 225, 182, 96),
        //   child: const Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        //     child: GNav(
        //         backgroundColor: Color.fromARGB(255, 225, 182, 96),
        //         color: Colors.white,
        //         activeColor: Colors.white,
        //         tabBackgroundColor: Color.fromARGB(26, 36, 20, 1),
        //         gap: 8,
        //         tabs: [
        //           GButton(
        //             icon: Icons.home,
        //             text: "Home",
        //           ),
        //           GButton(
        //             icon: Icons.people,
        //             text: "Account",
        //           ),
        //           GButton(
        //             icon: Icons.menu,
        //             text: "Menu",
        //           ),
        //         ]),
        //   ),
        // ),
        backgroundColor: Color.fromARGB(255, 247, 244, 242),
        bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Color.fromARGB(66, 206, 106, 44),
            animationDuration: Duration(milliseconds: 800),
            onTap: (index) {
              print(index);
            },
            items: [
              Icon(Icons.home, color: Colors.orange),
              Icon(Icons.favorite, color: Colors.orange),
              Icon(Icons.settings, color: Colors.orange),
            ]),
        body: ListView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(top: 18),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "15 hours Ago",
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        width: 200.0,
                      ),
                      Container(
                        height: 40.0,
                        width: 130.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Color.fromARGB(255, 218, 8, 8),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.message),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Message"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Have a great day with my amazing client all the way from Nepal",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 242, 105, 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Confession",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200.0,
                      width: 800.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.asset(
                        'images/news.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_upward,
                          color: Colors.red,
                          size: 25,
                        ),
                        Text("56.8k"),
                        Icon(Icons.arrow_downward),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(Icons.comment),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("4879"),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(Icons.favorite),
                        Icon(Icons.arrow_upward)
                      ],
                    ),
                  ),
                  Text("15 hours ago"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "Have a great day with my amazing client all the way from Nepal",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Container(
                          height: 120,
                          width: 1000,
                          color: Color.fromARGB(255, 240, 236, 225),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("For Breaking news Download this app"),
                        )
                      ],
                    ),
                  ),
                  // Text(
                  //   "Sure",
                  //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  // ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
