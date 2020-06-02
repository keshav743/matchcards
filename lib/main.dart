import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'game_screen.dart';
import 'details_screen.dart';

void main() => runApp(MatchCards());

class MatchCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'SplashScreen',
      routes: {
        'SplashScreen': (context) => SplashScreen(),
        'GameScreen': (context) => GameScreen(),
        'DetailsScreen': (context) => DetailsScreen(),
      },
    );
  }
}
