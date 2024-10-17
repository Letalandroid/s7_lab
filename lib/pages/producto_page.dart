import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s7_lab/my_model.dart'; // Import your model

class ProductoPage extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Producto'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.photo_size_select_actual)),
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Form(
            child: Column(
              children: <Widget>[
                _crearNombre(ctx),
                _crearPrecio(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _crearNombre(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(labelText: 'Nombre'),
      onChanged: (value) {
        // Update the model when the text changes
        Provider.of<MyModel>(context, listen: false).updateName(value);
      },
    );
  }

  _crearPrecio() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: 'Precio'),
    );
  }
}
