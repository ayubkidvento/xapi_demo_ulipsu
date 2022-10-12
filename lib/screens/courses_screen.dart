import 'package:flutter/material.dart';
import 'package:xapi_demo/models/category_model.dart';

import '../widgets/course_card.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({super.key});

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: categoryList.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: categoryList.map((e) => Tab(text: e.title)).toList(),
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(width: 2.0, color: Colors.white),
            insets: EdgeInsets.symmetric(horizontal: 0.0),
          ),
//        /  indicatorPadding: EdgeInsets.all(0.0),
          indicatorWeight: 4.0,
          labelPadding: const EdgeInsets.only(left: 30.0, right: 30.0),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: categoryList
            .map((e) => ListView.separated(
                  padding: const EdgeInsets.all(16),
                  itemBuilder: (_, i) => const CourseCard(),
                  separatorBuilder: (_, i) => const SizedBox(height: 16),
                  itemCount: 10,
                  shrinkWrap: true,
                ))
            .toList(),
      ),
    );
  }
}
