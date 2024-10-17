import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s7_lab/pages/producto_page.dart';
import 'package:s7_lab/pages/home_page.dart';
import 'my_model.dart'; // Import your model

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return ChangeNotifierProvider(
      create: (context) => MyModel(), // Provide the model here
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (BuildContext ctx) => HomePage(),
          'producto': (BuildContext ctx) => ProductoPage(),
        },
      ),
    );
  }
}
