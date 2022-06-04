import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:website/colors.dart';

class Service extends StatelessWidget {
  const Service({
    Key? key,
    required this.body,
    required this.title,
  }) : super(key: key);

  final String body;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 5),
            Text(
              title,
              style: TextStyle(
                color: StudioColors.white.withOpacity(.7),
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
        const SizedBox(height: 5),
        NeumorphicContainer(
          radius: 15,
          style: NeumorphicStyle.pressed,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              body,
              style: TextStyle(
                color: StudioColors.white.withOpacity(.7),
                fontFamily: 'Poppins',
                fontSize: 14,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ],
    );
  }
}
