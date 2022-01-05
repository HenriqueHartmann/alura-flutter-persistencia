import 'package:bytebank/database/app_database.dart';
import 'package:flutter/material.dart';
import 'package:bytebank/screens/dashboard.dart';

import 'package:bytebank/models/contact.dart';

void main() {
  runApp(const BytebankApp());
  findAll().then((contacts) => debugPrint(contacts.toString()));
}

class BytebankApp extends StatelessWidget {
  const BytebankApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.green.shade900,
          colorScheme:
            ColorScheme.fromSwatch().copyWith(
              primary: Colors.green.shade900,
              secondary: Colors.blueAccent.shade700,
            ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor:
                MaterialStateProperty.all<Color>(Colors.blueAccent.shade700),
            ),
          ),
        ),
        home: const Dashboard(),
    );
  }
}
