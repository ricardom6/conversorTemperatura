import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    TextStyle styleDecoration =
        TextStyle(color: Colors.black87, fontSize: 20);
    TextStyle styleField = TextStyle(color: Colors.lightBlueAccent);

    AppBar appBar = AppBar(
      title: Text("Conversor de Temperatura"),
      centerTitle: true,
      backgroundColor: Colors.blue,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () {},
        )
      ],
    );
    Icon icon = Icon(
      Icons.wb_sunny,
      size: 120,
      color: Colors.yellow,
    );
    TextField tempCelsius = TextField(
      decoration: InputDecoration(
        labelText: 'Temp Celsius',
        labelStyle: styleDecoration,
      ),
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      style: styleField,
    );
    TextField tempFahrenheit = TextField(
      decoration: InputDecoration(
        labelText: 'Temp Fahrenheit',
        labelStyle: styleDecoration,
      ),
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      style: styleField,
    );

    Column column = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        icon,
        tempCelsius,
        tempFahrenheit,
      ],
    );

    Scaffold scaffold = Scaffold(
      appBar: appBar,
      backgroundColor: Colors.white,
      body: column,
    );
    return scaffold;
  }
}
