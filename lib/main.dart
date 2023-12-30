import 'package:flutter/material.dart';
import 'package:kalkulator/providers/area_calc_provider.dart';
import 'package:kalkulator/providers/basic_calc_provider.dart';
import 'package:kalkulator/providers/drawer_provider.dart';
import 'package:kalkulator/providers/lenght_calc_provider.dart';
import 'package:kalkulator/providers/mass_calc_provider.dart';
import 'package:kalkulator/providers/speed_calc_provider.dart';
import 'package:kalkulator/providers/time_calc_provider.dart';
import 'package:kalkulator/themes/blue.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => DrawerProvider()),
    ChangeNotifierProvider(create: (_) => BasicCalcProvider()),
    ChangeNotifierProvider(create: (_) => AreaCalcProvider()),
    ChangeNotifierProvider(create: (_) => LenghtCalcProvider()),
    ChangeNotifierProvider(create: (_) => MassCalcProvider()),
    ChangeNotifierProvider(create: (_) => SpeedCalcProvider()),
    ChangeNotifierProvider(create: (_) => TimeCalcProvider()),
  ], child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DrawerProvider>(context);

    return MaterialApp( 
      theme: ThemeData(useMaterial3: true, colorScheme: lightBlueScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkBlueScheme),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Calculator')),
        body: Center(child: provider.getSelectedScreen()),
        drawer: NavigationDrawer(
            onDestinationSelected: provider.changePage,
            selectedIndex: provider.selectedIndex,
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(28, 16, 16, 10),
                child: Text('Header'),
              ),
              NavigationDrawerDestination(
                  icon: Icon(Icons.add_box), label: Text('Basic')),
              NavigationDrawerDestination(
                  icon: Icon(Icons.abc), label: Text('Area')),
              NavigationDrawerDestination(
                  icon: Icon(Icons.abc), label: Text('Lenght')),
              NavigationDrawerDestination(
                  icon: Icon(Icons.abc), label: Text('Mass')),
              NavigationDrawerDestination(
                  icon: Icon(Icons.abc), label: Text('Speed')),
              NavigationDrawerDestination(
                  icon: Icon(Icons.timer), label: Text('Time')),
            ]),
      ),
    );
  }
}
