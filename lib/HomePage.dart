import 'package:flutter/material.dart';
import 'package:monew/MyPage.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: Homeshortmain(),
      )
    );
  }
}

class Homeshortmain extends StatefulWidget {
  @override
  _HomeshortsmainState createState() => _HomeshortsmainState();
}

class _HomeshortsmainState extends State<Homeshortmain> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomeScreen(),
    BrowseScreen(),
    LikeScreen(),
    MyPageScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 812,
                child: _children[_currentIndex],
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                  width: 415,
                  height: 49,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Colors.grey.withOpacity(0.1)),
                  child: Row(
                    children: [
                      buildNavItem(0, 'Home', Icons.home),
                      buildNavItem(1, 'Search', Icons.search),
                      buildNavItem(2, 'Like', Icons.favorite),
                      buildNavItem(3, 'MyPage', Icons.person),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildNavItem(int index, String title, IconData icon) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onTabTapped(index),
        child: Container(
          color: _currentIndex == index ? Colors.blue : Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: _currentIndex == index ? Colors.white : Colors.black),
              Text(
                title,
                style: TextStyle(
                  color: _currentIndex == index ? Colors.white : Colors.black,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          'Home Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class BrowseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          'Browse Screen',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}

class LikeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text(
          'Like Screen',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}

class MyPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyPage(),
    );
  }
}