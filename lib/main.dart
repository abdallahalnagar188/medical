import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'الوقايه والعلاج من الإصابات',
      debugShowCheckedModeBanner: false,

      // Arabic locale configuration
      locale: const Locale('ar', 'SA'),
      supportedLocales: const [Locale('ar', 'SA')],

      // Localization delegates
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      // RTL directionality
      localeResolutionCallback: (locale, supportedLocales) {
        return const Locale('ar', 'SA');
      },

      // Theme configuration
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          primary: Colors.teal,
        ),
        useMaterial3: true,
        fontFamily: 'Cairo', // Will use system Arabic font
        // AppBar theme
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal.shade400,
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
        ),

        // Card theme
        cardTheme: CardThemeData(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),

        // Button theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),

      // Start with splash screen
      home: const SplashScreen(),
    );
  }
}
