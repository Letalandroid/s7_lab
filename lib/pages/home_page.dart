import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s7_lab/my_model.dart'; // Import your model

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    final myModel = Provider.of<MyModel>(ctx); // Access the model

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Text(''), // Display model data
      ),
      floatingActionButton: _crearBoton(ctx),
    );
  }

  _crearBoton(BuildContext ctx) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(ctx, 'producto');
      },
      child: Icon(Icons.add),
      foregroundColor: Colors.white,
      backgroundColor: Colors.deepPurple,
    );
  }
}
