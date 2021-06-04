import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculando IMC",
            style: TextStyle(fontSize: 20, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [IconButton(icon: Icon(Icons.refresh), onPressed: () {})],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(
            Icons.person_outline,
            color: Colors.green,
            size: 120,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Peso em KG",
              labelStyle: TextStyle(color: Colors.green),
            ),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.green, fontSize: 25),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Altura Cm",
              labelStyle: TextStyle(color: Colors.green),
            ),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.green, fontSize: 25),
          ),

          Container(
            height: 50,
            child: RaisedButton(
              onPressed: (){},
              child:Text("Calcular", style: TextStyle(color: Colors.white, fontSize: 25),),
              color: Colors.green,
            )
            ,
          )


        ],
      ),
    );
  }
}
