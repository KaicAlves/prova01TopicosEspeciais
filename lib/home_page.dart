import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {

  late TextEditingController _num1;
  late TextEditingController _num2;
  late String _resultado;

  @override
  void initState() {
    super.initState();
    _num1 = new TextEditingController(text: "0");
    _num2 = new TextEditingController(text: "15");
    _resultado = " ";
  }

  @override
  Widget build(BuildContext context) {
    var op;
    return new Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Insira o primeiro número: '),
            controller: _num1,
            keyboardType: TextInputType.number,
            onChanged: (text) {
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Insira o segundo número: '),
            controller: _num2,
            keyboardType: TextInputType.number,
            onChanged: (text) {
            },
          ),
          RadioListTile(
          title: Text('Adição'),
          activeColor: Colors.blue,
          value: 1, 
          groupValue: op, 
          onChanged: (var op) {
            _calculate(op);
          }
          ),
          RadioListTile(
          title: Text('Subtração'),
          activeColor: Colors.blue,
          value: 2, 
          groupValue: op, 
          onChanged: (var op) {
            _calculate(op);
          }
          ),
          RadioListTile(
          title: Text('Multiplicação'),
          activeColor: Colors.blue,
          value: 3, 
          groupValue: op, 
          onChanged: (var op) {
            _calculate(op);
          }
          ),
          RadioListTile(
          title: Text('Divisão'),
          activeColor: Colors.blue,
          value: 4, 
          groupValue: op, 
          onChanged: (var op) {
            _calculate(op);
          }
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text(
              _resultado,
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }

  void _calculate(op) {
    // 1
    String num1Txt = _num1.text;
    String num2Txt = _num2.text;

    // 3
    double n1 = double.parse(num1Txt.isNotEmpty
        ? num1Txt : "0");
    double n2 = double.parse(num2Txt.isNotEmpty
        ? num2Txt : "0");

    switch(op) {
    case 1:
      setState(() {
        _resultado = "O resultado da soma é: " + (n1+n2).toString();
      });
      break;

    case 2:
    setState(() {
      _resultado ='O resultado da subtração é: ' + (n1-n2).toString();
    });
      break;

    case 3:
      setState(() {
        _resultado = 'O resultado da multiplicação é: ' + (n1*n2).toString();
      });
      break;

    case 4:
      setState(() {
        _resultado = 'O resultado da divisão é: ' + (n1/n2).toString();
      });
      break;
    }
  }
}