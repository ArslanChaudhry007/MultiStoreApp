import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:multi_store_app/login_signup_screens/customer_signup_screen.dart';
import 'package:multi_store_app/main_screens/customer_supplier_home_screens/customer_home.dart';
import 'package:multi_store_app/main_screens/customer_supplier_home_screens/supplier_home_screen.dart';
import 'package:multi_store_app/main_screens/welcome_screen_vc/welcome_screen.dart';
import 'splash_screen.dart';

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
    //  home: const SplashScreen(),
      initialRoute: '/splash_screen',
      routes: {
        '/splash_screen':(context) => const SplashScreen(),
        '/welcome_screen':(context) => const WelcomeScreen(),
        '/customer_home':(context) => const CustomerHomeScreen(),
        '/supplier_home':(context) => const SupplierHomeScreen(),
        '/customer_signup':(context) => const CustomerRegisterScreen(),
      },
    );
  }
}
