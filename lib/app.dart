import 'package:flutter/material.dart';
import 'package:whatsapp_app_redesign/screens/home_page.dart';

class NewWhatsApp extends StatelessWidget {
  const NewWhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        drawerTheme: const DrawerThemeData(scrimColor: Colors.transparent),
      ),
      home: const HomePage(),
    );
  }
}
