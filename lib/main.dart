import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_states/cart_model.dart';
import 'package:study_states/my_catalog.dart';

import 'my_cart.dart';

void main() {
  runApp(BlocProvider(
    create: (_) => CartModel(),
    child: const MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyCatalog(),
        '/cart': (context) => MyCart(),
      },
    );
  }
}