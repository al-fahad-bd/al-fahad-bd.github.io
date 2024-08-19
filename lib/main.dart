import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/view/root.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Future.delayed(Duration(milliseconds: 100));
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       home: Scaffold(
//         appBar: AppBar(title: Text('Flutter Demo')),
//         body: Center(child: Text('Hello, world!')),
//       ),
//     );
//   }
// }
void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PORTFOLIO',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blue, 
      ),
      home: const RootScreen(),
    );
  }
}
