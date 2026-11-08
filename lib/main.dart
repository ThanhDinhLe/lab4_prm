import 'package:flutter/material.dart';
import 'screen/shop_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Products',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0876D1)),
          scaffoldBackgroundColor: const Color(0xFFF5F7FB),
          useMaterial3: true,
        ),
        home: const ShopScreen(),
      );
}
