import 'package:flutter/material.dart';
import 'package:restomate/core/utils/context_helper.dart';

import '../../core/constants/images.dart';
import '../../core/routes/route_enerator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.pushReplacementNamed(context, Routes.menuRoute),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          ImageRes.appLogo,
          width: context.getWidth * .6,
        ),
      ),
    );
  }
}
