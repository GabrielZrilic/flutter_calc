import 'package:flutter/material.dart';
import 'package:kalkulator/providers/basic_calc_provider.dart';
import 'package:kalkulator/screens/basic_calc_screen.dart';
import 'package:kalkulator/themes/blue.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => BasicCalcProvider())
  ], child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp( 
      theme: ThemeData(useMaterial3: true, colorScheme: lightBlueScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkBlueScheme),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Calculator')),
        body: const Center(child: BasicCalcScreen()),
      ),
    );
  }
}
