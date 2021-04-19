import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: 'calc',
      home: Calc(),
    );
  }

}

class Calc extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Calcul();


}

class Calcul extends State<Calc> {

  final contoller_numberA= TextEditingController();
  final contoller_numberB= TextEditingController();
  final my_form_key= GlobalKey<FormState>();

  String textToShow = "";


  void Sum()
  {
     int numberA = int.parse(contoller_numberA.text);
     int numberB = int.parse(contoller_numberB.text);
     int result = numberA + numberB;


     setState(() {
        textToShow = "$numberA + $numberB = $result";
     });
  }

  void Minus()
  {
    int numberA = int.parse(contoller_numberA.text);
    int numberB = int.parse(contoller_numberB.text);
    int result = numberA - numberB;


    setState(() {
      textToShow = "$numberA - $numberB = $result";
    });
  }

  void Times()
  {
    int numberA = int.parse(contoller_numberA.text);
    int numberB = int.parse(contoller_numberB.text);
    int result = numberA * numberB;


    setState(() {
      textToShow = "$numberA * $numberB = $result";
    });
  }

  void Divide()
  {
    int numberA = int.parse(contoller_numberA.text);
    int numberB = int.parse(contoller_numberB.text);
    double result = numberA / numberB;


    setState(() {
      textToShow = "$numberA / $numberB = $result";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: Form(key: my_form_key,child:
      Column(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextFormField (
          controller: contoller_numberA,
          validator: (value){
            if (value.isEmpty) return "Plese Enter number";
          },
          decoration: InputDecoration(hintText: "Enter number"),
          keyboardType: TextInputType.number),
        TextFormField (
            controller: contoller_numberB,
            validator: (value){
              if (value.isEmpty) return "Plese Enter number";
            },
            decoration: InputDecoration(hintText: "Enter number"),
            keyboardType: TextInputType.number),
        Text(textToShow,style:TextStyle(fontSize: 20.0),),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          RaisedButton(onPressed: Sum,child: Text('+'),),
          RaisedButton(onPressed: Minus,child: Text('-'),),
          RaisedButton(onPressed: Times,child: Text('*'),),
          RaisedButton(onPressed: Divide,child: Text('/'),),
        ],)
      ],
      )
    ));
  }

}