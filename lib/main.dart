// ignore_for_file: depend_on_referenced_packages

import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/utils/constants.dart';
import 'package:dashboard/views/home_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const Dashboard(),
    ),
  );
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('ar'),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontFamily: Constants.kMontserrat,
            color: AppColors.kPrimaryColor,
          ),
        ),
      ),
      supportedLocales: const [
        Locale('ar', ''),
        Locale('en', ''),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
