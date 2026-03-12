import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const InternationalRelationsApp());
}

class InternationalRelationsApp extends StatelessWidget {
  const InternationalRelationsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'International Relations',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1A365D), // Professional deep blue
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}
