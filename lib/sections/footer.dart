import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:website/colors.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicCanvas(
      color: StudioColors.secondary,
      child: Row(
        children: [
          const SizedBox(width: 15),
          const Text(
            'Copyright (c) 2022, Stateful Studio \n'
            'All rights reserved.',
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.all(15),
            child: NeumorphicButton(
              onTap: () {
                launchUrl(Uri.parse('https://github.com/Stateful-Studio'));
              },
              style: NeumorphicStyle.none,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: SvgPicture.asset(
                  'assets/github.svg',
                  height: 15,
                  color: Colors.black.withOpacity(.7),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
