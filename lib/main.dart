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
  TextEditingController celsiusController = TextEditingController();
  TextEditingController fahrenheitController = TextEditingController();
  void _resetFields(){
    celsiusController.text = "";
    fahrenheitController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    TextStyle styleDecoration = TextStyle(color: Colors.black87, fontSize: 20);
    TextStyle styleField = TextStyle(color: Colors.lightBlueAccent);

    RaisedButton raisedButton = RaisedButton(
      onPressed: () {},
      child: Text("Calcular"),
      color: Colors.blueAccent,
    );

    AppBar appBar = AppBar(
      title: Text("Conversor de Temperatura"),
      centerTitle: true,
      backgroundColor: Colors.blue,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: _resetFields,
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
      controller: celsiusController,
    );
    TextField tempFahrenheit = TextField(
      decoration: InputDecoration(
        labelText: 'Temp Fahrenheit',
        labelStyle: styleDecoration,
      ),
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      style: styleField,
      controller: fahrenheitController,
    );

    Container containerBtn = Container(
      padding: EdgeInsets.all(8),
      height: 100.0,
      child: raisedButton,
    );


    //ListView column = ListView(
    //  padding: EdgeInsets.all(10),
    //  shrinkWrap: true,
    Column column =  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        icon,
        tempCelsius,
        tempFahrenheit,
        containerBtn,
      ],
    );
    SingleChildScrollView singleChildScrollView = SingleChildScrollView(
      child: column,
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
    );
    //Container containerColuna =
      //  Container(padding: EdgeInsets.all(8), child: column);
//comente
    Scaffold scaffold = Scaffold(
      appBar: appBar,
      backgroundColor: Colors.white,
      body: singleChildScrollView,
    );
    return scaffold;
  }
}
