import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/responsive/mobile_layout.dart';
import 'package:insta_clone/responsive/responsive.dart';
import 'package:insta_clone/responsive/web_layout.dart';
import 'package:insta_clone/screens/login.dart';
import 'package:insta_clone/screens/signup.dart';
import 'package:insta_clone/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyB-YuCgnBLeaxPCdP1khjqKm9kJemJ6Yvw",
        appId: "1:888158659579:web:dbc6afd4b45034621c615e",
        messagingSenderId: "888158659579",
        projectId: "insta-clone-1771c",
        storageBucket: "insta-clone-1771c.appspot.app",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Insta Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: const ResponsiveLayout(
      //   webScreenLayout: WebLayout(),
      //   mobileScreenLayout: MobileLayout(),
      // ),
      // home: LoginScreen(),
      home: SignupScreen(),
    );
  }
}
