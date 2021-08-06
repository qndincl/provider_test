import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_null_safety_test/provider_test.dart';

import 'home_screen.dart';

void main() {
  // runApp(MultiProvider(
  //   providers: [
  //     Provider<ProviderTesttest>(
  //         create: (_) => ProviderTesttest()),
  //   ],
  //   child: MyApp(),
  // ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ListenableProvider(
        create: (_) => ProviderTesttest(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          // home: ChangeNotifierProvider<ProviderTesttest>(
          //     create: (_) => ProviderTesttest(), child: HomeScreen()),
          home: MultiProvider(providers: [
            Provider<ProviderTesttest>(create: (_) => ProviderTesttest()),
          ], child: HomeScreen()),
        ));
  }
}

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return HomeScreen();
//   }
// }
