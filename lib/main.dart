// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/auth/welcome/login/components/login_auth_provider.dart';
import 'package:e_commerce_app/auth/welcome/signup/components/signup_auth_provider.dart';
import 'package:e_commerce_app/auth/welcome/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SignupAuthProvider>(
          create: (context) => SignupAuthProvider(),
        ),
        ChangeNotifierProvider<LoginAuthProvider>(
          create: (context) => LoginAuthProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapShot) {
              if (snapShot.hasData) {
                //  return HomeScreen();
              }
              return WelcomePage();
            }),
      ),
    );
  }
}
