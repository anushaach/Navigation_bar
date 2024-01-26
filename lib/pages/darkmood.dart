import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

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

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _boolIcon ? _darkTheme : _lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("News app")),
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
                        style: TextStyle(
                          color: Color.fromARGB(255, 91, 79, 75),
                        ),
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
                          color: Color.fromARGB(255, 91, 79, 75),
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
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
                        Text(
                          "56.8k",
                          style: TextStyle(
                            color: Color.fromARGB(255, 91, 79, 75),
                          ),
                        ),
                        Icon(
                          Icons.arrow_downward,
                          color: Color.fromARGB(255, 91, 79, 75),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(
                          Icons.comment,
                          color: Color.fromARGB(255, 91, 79, 75),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "4879",
                            style: TextStyle(
                              color: Color.fromARGB(255, 91, 79, 75),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 91, 79, 75),
                        ),
                        Icon(
                          Icons.arrow_upward,
                          color: Color.fromARGB(255, 91, 79, 75),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "15 hours ago",
                    style: TextStyle(
                      color: Color.fromARGB(255, 91, 79, 75),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "Have a great day with my amazing client all the way from Nepal",
                          style: TextStyle(
                              color: Color.fromARGB(255, 91, 79, 75),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
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
