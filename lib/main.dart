import 'package:flutter/material.dart';
import 'package:my_money/src/modules/initial/page/initial_page.dart';
import 'package:my_money/src/modules/login/page/login_page.dart';
import 'package:my_money/src/modules/register/page/register_page.dart';
import 'package:my_money/src/router/app_router.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Money',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green, useMaterial3: true),
      home: const InitialPage(),
      routes: {
        AppRouter.login: (context) => const LoginPage(),
        AppRouter.register: (context) => const RegisterPage(),
      },
    );
  }
}
