import 'package:flutter/material.dart';
import 'package:restomate/core/init/provider_init.dart';
import 'package:restomate/core/routes/route_enerator.dart';

import 'core/constants/theme.dart';

void main() {
  runApp(const Restomate());
}

class Restomate extends StatefulWidget {
  const Restomate({Key? key}) : super(key: key);

  @override
  State<Restomate> createState() => _Restomate();
}

class _Restomate extends State<Restomate> {
  @override
  Widget build(BuildContext context) {
    return ProviderInit(
      child: MaterialApp(
        title: 'Restomate',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: RestomateTheme.purplePalette.shade500),
          useMaterial3: true,
        ),
        themeMode: ThemeMode.light,
        initialRoute: Routes.splashRoute,
        onGenerateRoute: RoutesGenerator.getRoute,
      ),
    );
  }
}
