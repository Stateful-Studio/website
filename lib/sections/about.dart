import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:website/colors.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

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
                      'About Us',
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
                  const SizedBox(height: 15),
                  Text(
                    'We\'re a small development company that specializes in '
                    'building cross-platform applications. We have experience '
                    'working with teams of all sizes to help bring their mobile '
                    'offering to market.',
                    style: TextStyle(
                      color: StudioColors.white.withOpacity(.5),
                      fontFamily: 'Poppins',
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.left,
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
