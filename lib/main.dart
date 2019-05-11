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
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _resetFields(){
    celsiusController.text = "";
    fahrenheitController.text = "";
  }
  void _converter (){
    double celsius = double.parse(celsiusController.text);
    double fahrenheit = celsius * 1.8 +32.0;
    fahrenheitController.text = fahrenheit.toStringAsFixed(4);
  }

  @override
  Widget build(BuildContext context) {
    TextStyle styleDecoration = TextStyle(color: Colors.black87, fontSize: 20);
    TextStyle styleField = TextStyle(color: Colors.lightBlueAccent);

    RaisedButton raisedButton = RaisedButton(
      onPressed: (){
        if (_formKey.currentState.validate()){
        _converter();
        }},
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

    TextFormField tempCelsius = TextFormField(
      decoration: InputDecoration(
        labelText: 'Temp Celsius',
        labelStyle: styleDecoration,
      ),
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      style: styleField,
      controller: celsiusController,
      validator: (value){
        if (value.isEmpty){
          return "Informe um valor";
        }
      },
    );
    TextFormField tempFahrenheit = TextFormField(
      decoration: InputDecoration(
        labelText: 'Temp Fahrenheit',
        labelStyle: styleDecoration,
      ),
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      style: styleField,
      controller: fahrenheitController,
      /*validator: (value){
        if (value.isEmpty){
          return "Informe um valor";
        }
      },*/
    );

    Container containerBtn = Container(
      padding: EdgeInsets.fromLTRB(8, 24, 8, 24),
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

    Form form = Form(
      child: column,
      key: _formKey,

    );

    SingleChildScrollView singleChildScrollView = SingleChildScrollView(
      child: form,
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
    );
    //Container containerColuna =
      //  Container(padding: EdgeInsets.all(8), child: column);

    Scaffold scaffold = Scaffold(
      appBar: appBar,
      backgroundColor: Colors.white,
      body: singleChildScrollView,
    );
    return scaffold;
  }
}
