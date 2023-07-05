import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:workuot_application/model/plan.dart';
import 'package:workuot_application/popular_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:workuot_application/today_plan.dart';
import 'model/popular.dart';

final feature = [
  Popular(
    img: 'assets/images/train_2.svg',
    text: 'Lower Body\nTraining',
    kcal: '500',
    min: '50',
  ),
  Popular(
    img: "assets/images/train_1.svg",
    text: "Hand\nTraining",
    kcal: '600',
    min: '40',
  )
];

final todayPlan = [
  Plan(
    Text: "Push Up",
    Percentage: 45,
    Explane: "100 Push up a day",
  ),
  Plan(
    Text: "Sit Up",
    Percentage: 75,
    Explane: "20 Sit up a day",
  ),
  Plan(
    Text: "Leg excercises",
    Percentage: 80,
    Explane: "10 Sit up a day",
  )
];

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Good Morning 🔥',
                        style: TextStyle(
                          color: Color(0xFF192126),
                          fontSize: 14,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Emily Johnson',
                        style: TextStyle(
                          color: Color(0xFF192126),
                          fontSize: 24,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w800,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    width: 400,
                    height: 48,
                    padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: const Color(0xff2f2f2f).withOpacity(0.4),
                      ),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        enabled: false,
                        labelText: 'Search',
                        icon: Icon(
                          Icons.search,
                          size: 33,
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 24, left: 20),
                  child: Text(
                    'Popular Workouts',
                    style: TextStyle(
                      color: Color(0xFF192126),
                      fontSize: 18,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                CarouselSlider.builder(
                  itemCount: feature.length,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      PopularWidget(
                    itemIndex,
                    feature[itemIndex].kcal,
                    feature[itemIndex].min,
                    feature[itemIndex].text,
                  ),
                  options: CarouselOptions(
                    enableInfiniteScroll: true,
                    height: 174.0,
                    initialPage: 0,
                    viewportFraction: 0.7,
                    aspectRatio: 16 / 10,
                    //autoPlay: true,
                    autoPlayCurve: Curves.slowMiddle,
                    pageSnapping: true,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 21, top: 21, bottom: 16),
                  child: Text(
                    'Today plan',
                    style: TextStyle(
                      color: Color(0xFF192126),
                      fontSize: 18,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: todayPlan.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: TodayPlan(
                        index,
                        todayPlan[index].Explane,
                        todayPlan[index].Percentage,
                        todayPlan[index].Text,
                      ),
                    );
                  },
                  shrinkWrap: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
