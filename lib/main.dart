import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:team1/provider/cart_provider.dart';
import 'package:team1/provider/favorite_provider.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => CartProvider()),
      ChangeNotifierProvider(create: (_) => FavoriteProvider()),
    ],
    child: MaterialApp(
      themeMode: ThemeMode.light,
      title: 'Flutter Demo',

      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  );
}
// This is navya