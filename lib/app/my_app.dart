import 'package:fluttejorginho/app/view/contact_Form.dart';
import 'package:flutter/material.dart';

import 'view/ContactList.dart';

class MyApp extends StatelessWidget {
  static const HOME = '/';
  static const CONTACT_FORM = 'contact-form';
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      routes: {
        // ignore: prefer_const_constructors
        HOME: (context) => ContactList(),
        CONTACT_FORM: (context) => ContactForm()
      },
    );
  }
}
