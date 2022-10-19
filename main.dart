import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/homeProvider.dart';
import 'package:weather_app/view/cityScreen.dart';
import 'package:weather_app/view/homeScreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeProvider>(
          create: (context) => HomeProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const CityScreen(),
          'home': (context) => const HomeScreen(),
        },
      ),
    ),
  );
}
