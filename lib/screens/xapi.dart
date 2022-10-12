import 'package:flutter/material.dart';
import 'package:xapi_demo/screens/courses_screen.dart';
import 'package:xapi_demo/screens/events_screen.dart';
import 'package:xapi_demo/screens/home_screen.dart';
import 'package:xapi_demo/screens/profile_screen.dart';
import 'package:xapi_demo/screens/search_screen.dart';

class XAPI extends StatefulWidget {
  const XAPI({Key? key}) : super(key: key);

  @override
  State<XAPI> createState() => _XAPIState();
}

class _XAPIState extends State<XAPI> {
  static const _pages = [
    HomeScreen(),
    CoursesScreen(),
    SearchScreen(),
    EvenetsScreen(),
    ProfileScreen(),
  ];
  int _current = 0;
  late final PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: _current);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void pageChanged(val) {
    setState(() => _current = val);
    // _pageController.animateToPage(
    //   val,
    //   duration: const Duration(milliseconds: 500),
    //   curve: Curves.linear,
    // );
    _pageController.jumpToPage(val);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        title: const Text('XAPI DEMO'),
        centerTitle: true,
        elevation: 0,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (val) => pageChanged(val),
        children: _pages.map((e) => _pages[_current]).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _current,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.campaign),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (val) => pageChanged(val),
      ),
    );
  }
}
/*Container(
            height: 200,
            margin: const EdgeInsets.only(top: 8),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (_, i) => Container(
                width: size.width - 32,
                color: Colors.amber,
                child: Center(child: Text('$i')),
              ),
              separatorBuilder: (_, i) => const SizedBox(width: 16),
              itemCount: 5,
            ),
          ),*/
