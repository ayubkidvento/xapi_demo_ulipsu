import 'package:flutter/material.dart';
import 'package:xapi_demo/widgets/category.dart';
import '../widgets/carousel.dart';
import '../widgets/course_card.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen>
//     with SingleTickerProviderStateMixin {
//   late final TabController _controller;
//   List<Widget> list = const [
    // Tab(text: 'Art Craft'),
    // Tab(
    //   text: 'Aspirational',
    // ),
    // Tab(
    //   text: 'Coding',
    // ),
    // Tab(text: 'Dance'),
    // Tab(text: 'Language & Communication'),
    // Tab(text: 'Life Skills'),
    // Tab(
    //   text: 'Math',
    // ),
    // Tab(
    //   text: 'Music',
    // ),
    // Tab(text: 'STEM'),
    // Tab(text: 'Yoga'),
//   ];
//   @override
//   void initState() {
//     super.initState();
//     _controller = TabController(length: list.length, vsync: this);
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       shrinkWrap: true,
//       // physics: const BouncingScrollPhysics(),
//       children: [
//         const SizedBox(height: 16),
//         const Carousel(),
//         const SizedBox(height: 16),
//         const MyCoursesListWidget(title: 'Featured Courses'),
//         const SizedBox(height: 16),
//         const MyCoursesListWidget(title: 'Suggested For You'),
//         const SizedBox(height: 16),
//         Container(
//           height: 50,
//           color: Colors.white,
//           child: TabBar(
//             controller: _controller,
//             isScrollable: true,
//             tabs: list,
//             labelColor: Colors.blue,
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             indicator: const UnderlineTabIndicator(
//               borderSide: BorderSide(width: 2.0, color: Colors.blue),
//               insets: EdgeInsets.symmetric(horizontal: 0.0),
//             ),
//             indicatorWeight: 4.0,
//             labelPadding: const EdgeInsets.only(left: 30.0, right: 30.0),
//           ),
//         ),
//         SizedBox(
//           height: MediaQuery.of(context).size.height - 260,
//           child: TabBarView(
//             controller: _controller,
//             children: list
//                 .map((e) => ListView.separated(
//                       padding: const EdgeInsets.all(16),
//                       itemBuilder: (_, i) => const CourseCard(),
//                       separatorBuilder: (_, i) => const SizedBox(height: 16),
//                       itemCount: 10,
//                       shrinkWrap: true,
//                       primary: false,
//                       // scrollDirection: Axis.horizontal,
//                     ))
//                 .toList(),
//           ),
//         ),
//       ],
//     );
//   }
// }

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      children: const [
        SizedBox(height: 16),
        Carousel(),
        CategoryList(),
        MyCoursesListWidget(title: 'Featured Courses'),
        SizedBox(height: 16),
        MyCoursesListWidget(title: 'Suggested For You'),
        SizedBox(height: 16),
      ],
    );
  }
}

class MyCoursesListWidget extends StatelessWidget {
  final String title;
  const MyCoursesListWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CategoryTitle(title: title),
        SizedBox(
          height: 280,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            itemBuilder: (_, i) => SizedBox(
              width: MediaQuery.of(context).size.width - 32,
              child: const CourseCard(),
            ),
            separatorBuilder: (_, i) => const SizedBox(width: 16),
            itemCount: 10,
            shrinkWrap: true,
            primary: false,
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}

class CategoryTitle extends StatelessWidget {
  final String title;
  const CategoryTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.only(bottom: 16),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(fontWeight: FontWeight.w500),
      ),
    );
  }
}
