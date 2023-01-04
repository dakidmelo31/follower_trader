import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging_example/firebase_options.dart';
import 'package:flutter/material.dart';

import 'pages/SplashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(StartupApp());
}

class StartupApp extends StatelessWidget {
  const StartupApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Follower Trader",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: SplashScreen(),
    );
  }
}
