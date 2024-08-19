import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.prefix, required this.title});

  final String prefix;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$prefix ',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.width > 915
                  ? MediaQuery.of(context).size.width < 650
                      ? 20
                      : 30
                  : 20,
              fontWeight: FontWeight.bold),
        ),
        ShaderMask(
          shaderCallback: (bounds) {
            return const LinearGradient(
                end: Alignment.centerRight,
                begin: Alignment.centerLeft,
                colors: [
                  Color.fromARGB(255, 0, 204, 255),
                  Color.fromARGB(255, 0, 47, 255),
                  Color.fromARGB(255, 103, 1, 255),
                  // Colors.pink,
                  // Colors.cyanAccent,
                ]).createShader(bounds);
          },
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width > 915
                    ? MediaQuery.of(context).size.width < 650
                        ? 20
                        : 30
                    : 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
