import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/util/size.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.dp48(context),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 30),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 66, 141, 207),
            Color.fromARGB(255, 37, 84, 125),
          ],
        ),
      ),
    );
  }
}
