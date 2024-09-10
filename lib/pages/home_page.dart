import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/theme/theme.dart';
import 'package:flutter_design_pattern/widgets/footer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApps.backgroundColor,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: const Text(
                'Flutter Design Pattern',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Footer(), // Footer tetap di bagian bawah
        ],
      ),
    );
  }
}
