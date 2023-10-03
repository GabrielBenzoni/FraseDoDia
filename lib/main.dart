import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _fraseGerada = "Clique para gerar uma nova frase!";

  var _frases = [
    "Enfrente os problemas e leve a melhor!",
    "Dê mais atenção ao que você tem de bom na sua vida",
    "Não se exija demais!",
    "Para chegar ao topo, o que importa é começar!",
    "Para hoje, use a roupa da sorte",
    "De nada adianta ter sonhos, se você não se empenhar em correr atrás",
    "Preste atenção nas oportunidades que estão à sua frente!",
    "Positividade para começar o dia é colocar a sua fé em prática",
    " Não deixe nada nem ninguém estragar o seu bom humor",
    "Ontem já passou, é hora de planejar o futuro",
    "Você pode não ter o melhor do mundo, mas agradeça por tudo o que tem hoje!",
    "Não deixe sua felicidade nas mãos de ninguém!",

  ];

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);
    setState((){
      _fraseGerada = _frases[numeroSorteado];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              Text(_fraseGerada,
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic
                ),
              ),
              ElevatedButton(
                  onPressed: _gerarFrase,
                  child: Text("Nova frase")
              )
            ],
          ),
        ),
      )
      ,
    );
  }
}