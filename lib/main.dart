
import 'package:api_login_with_dio/features/login/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

void main() {
  runApp(const ProviderScope(child:  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: Grock.scaffoldMessengerKey,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.yellow,
      ),
      home: const LoginPage(),
    );
  }
}
