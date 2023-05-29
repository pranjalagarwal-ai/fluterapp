import 'package:firebase_auth/firebase_auth.dart';
import 'package:fresco/auth.dart';
import 'package:flutter/material.dart';
import 'package:fresco/home_page.dart';
import 'package:fresco/login_register_page.dart';
import 'package:fresco/secondary_home_page.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Auth().authStateChanges,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return secondaryhomepage();
          } else {
            return const LoginPage();
          }
        });
  }
}
