import 'package:flutter/material.dart';
import 'package:i_band_name/pages/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Material App',
            initialRoute: 'home',
            routes: {
                'home':(context) => HomePage(),
            },
        );
    }
}