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
    Icon icon = Icon(Icons.wb_sunny, size: 120, color: Colors.yellow,);
    TextField tempCelsius = TextField(
      decoration: InputDecoration(
          labelText: 'Temp Celsius'
      ),
      keyboardType: TextInputType.number,);
    TextField tempFahrenheit = TextField(
      decoration: InputDecoration(
          labelText: 'Temp Fahrenheit'
      ),
      keyboardType: TextInputType.number,);
    Column column = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        icon, tempCelsius, tempFahrenheit,

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
