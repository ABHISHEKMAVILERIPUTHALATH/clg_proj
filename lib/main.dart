// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:main_project/admin/host_event.dart';
import 'package:main_project/appIntro/app_intro.dart';
import 'package:main_project/attendee/attendee_events_page.dart';
import 'package:main_project/home/loading.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../firebase_options.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey =
      'pk_test_51OuXOvSGP6q2G3Epp2YZnWDbHt7S7ouS3EMpwd73Xdnn4221iD9mfTl1QIXhIOJLChcY4U6CAfBdSrpBbjx5RqvZ00FbMzkGOy';
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Future<void> initializeFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: initializeFirebase(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return const MaterialApp(
                  debugShowCheckedModeBanner: false,
                  home: HomeScreen(),
                );
              } else {
                return const MaterialApp(
                  debugShowCheckedModeBanner: false,
                  home: AppIntro(),
                  // Events(),
                );
              }
            },
          );
        }
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Loading(),
        );
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SharedPreferences>(
      future: SharedPreferences.getInstance(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          SharedPreferences prefs = snapshot.data!;
          String? userType = prefs.getString('userType');

          if (userType == 'host') {
            return const HostEvent();
          } else {
            return const Events();
          }
        } else {
          return const Loading();
        }
      },
    );
  }
}
