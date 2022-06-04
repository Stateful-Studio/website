import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:website/colors.dart';
import 'package:website/widgets/service.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 1000,
          ),
          child: NeumorphicContainer(
            radius: 25,
            style: NeumorphicStyle.flat,
            width: MediaQuery.of(context).size.width * .9,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      'Services',
                      style: TextStyle(
                        color: StudioColors.white.withOpacity(.7),
                        fontFamily: 'Poppins',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 2,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Service(
                    body: 'Understand the work needed and the '
                        'timeframe you can expect to have your app built. '
                        'We have many years of experience with companies of sizes '
                        'and know how to work with your needs.',
                    title: 'CONSULTING',
                  ),
                  const SizedBox(height: 25),
                  const Service(
                    body: 'Full app development, from start to '
                        'finish. Building all UI and business logic components with '
                        'documentation for clear instructions on maintenance.',
                    title: 'DEVELOPMENT',
                  ),
                  const SizedBox(height: 25),
                  const Service(
                    body: 'Helping to get your internal developers up to speed '
                        'on everything they\'ll need to know to build new '
                        'features and maintain your application.',
                    title: 'TRAINING',
                  ),
                  const SizedBox(height: 25),
                  const Service(
                    body: 'Build a custom UI library based on your provided '
                        'designs. Making it easy to have all applications reflect '
                        'company branding and design principles.',
                    title: 'LIBRARIES',
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
