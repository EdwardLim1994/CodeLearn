import 'package:flutter/material.dart';

class BaseLayout extends StatelessWidget {
  final Widget child;
  final Widget? bottomNavigationBar;
  const BaseLayout({super.key, required this.child, this.bottomNavigationBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar,
      body: SafeArea(
        child: Center(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
