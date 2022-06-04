import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neumorphic/neumorphic.dart';

import 'package:website/colors.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NeumorphicContainer(
              radius: 300,
              style: NeumorphicStyle.flat,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: StudioColors.white,
                    width: 5,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(500),
                  ),
                ),
                margin: const EdgeInsets.all(30),
                padding: const EdgeInsets.all(20),
                width: 200,
                height: 200,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/logo/phone.svg',
                      color: StudioColors.secondary,
                    ),
                    SvgPicture.asset(
                      'assets/logo/title.svg',
                      color: StudioColors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          'A mobile development studio.',
          style: TextStyle(
            color: StudioColors.white.withOpacity(.8),
            fontFamily: 'Poppins',
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 45),
      ],
    );
  }
}
