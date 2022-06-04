import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';

import 'package:website/colors.dart';
import 'package:website/sections/index.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: StudioColors.primary,
      ),
      title: 'Stateful Studio',
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StudioColors.primary,
      body: NeumorphicCanvas(
        color: StudioColors.primary,
        direction: LightDirection.topRight,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Header(),
                    AboutSection(),
                    SizedBox(height: 50),
                    ServicesSection(),
                    SizedBox(height: 50),
                  ],
                ),
                const Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
