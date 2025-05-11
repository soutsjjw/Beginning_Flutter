import 'package:ch7_animations/widgets/animated_balloon.dart';
import 'package:ch7_animations/widgets/animated_container.dart';
import 'package:ch7_animations/widgets/animated_cross_fade.dart';
import 'package:ch7_animations/widgets/animated_opacity.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                AnimatedContainerWidget(),
                Divider(),
                AnimatedCrossFadeWidget(),
                Divider(),
                AnimatedOpacityWidget(),
                Divider(),
                AnimatedBalloonWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
